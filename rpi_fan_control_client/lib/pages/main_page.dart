import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:fan_controller/widgets/editable_field.dart';
import 'package:fan_controller/proto/generated/control.pbgrpc.dart' as control_pb;
import 'package:fan_controller/network/fan_control_client.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  control_pb.FanStatusResponse? _fanStatus;
  late FanControlClient _client;
  late StreamSubscription<control_pb.FanStatusResponse> _subscription;

  @override
  void initState() {
    super.initState();

    try {
      _initializeClient();
    } catch (e) {
      print('@@@ ERROR: fail to initialize client: $e');
    }
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 64),
              Center(
                child: Text(
                  _fanStatus != null ? _fanStatus!.currentTemperature.toStringAsFixed(2) : '',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              const SizedBox(height: 48),
              Row(
                children: [
                  Text(
                    '팬 on/off',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const Spacer(),
                  Switch(
                    value: _fanStatus != null && _fanStatus!.isFanOn,
                    onChanged: (bool value) {
                      if (_fanStatus == null) {
                        return;
                      }
                      config(isFanOn: value);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),
              EditableField(
                label: '팬 켜는 온도',
                value: _fanStatus != null ? _fanStatus!.onTemperature.toStringAsFixed(2) : '',
                onEdited: (String value) {
                  if (_fanStatus == null) {
                    return;
                  }

                  double? temp = _stringToDouble(value);
                  if (temp == null || temp <= _fanStatus!.offTemperature) {
                    return;
                  }

                  config(onTemperature: temp);
                },
              ),
              const SizedBox(height: 24),
              EditableField(
                label: '팬 끄는 온도',
                value: _fanStatus != null ? _fanStatus!.offTemperature.toStringAsFixed(2) : '',
                onEdited: (String value) {
                  if (_fanStatus == null) {
                    return;
                  }

                  double? temp = _stringToDouble(value);
                  if (temp == null || temp >= _fanStatus!.onTemperature) {
                    return;
                  }

                  config(offTemperature: temp);
                },
              ),
              const SizedBox(height: 24),
              EditableField(
                label: '팬 제어 비활성화 시간',
                value: _fanStatus != null ? _fanStatus!.controlOffTime : '',
                onEdited: (String value) {
                  if (_fanStatus == null || !_isValidTimeFormat(value)) {
                    return;
                  }
                  config(controlOffTime: value);
                },
              ),
              const SizedBox(height: 24),
              EditableField(
                label: '팬 제어 활성화 시간',
                value: _fanStatus != null ? _fanStatus!.controlOnTime : '',
                onEdited: (String value) {
                  if (_fanStatus == null || !_isValidTimeFormat(value)) {
                    return;
                  }
                  config(controlOnTime: value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _initializeClient() async {
    final Map<String, dynamic> jsonData;
    String jsonString = await rootBundle.loadString('assets/data/server_config.json');
    jsonData = jsonDecode(jsonString);

    String host = jsonData['host'];
    int port = jsonData['port'];
    String key = jsonData['whitelist'][0];

    _client = FanControlClient(host, port, key);
    _subscription = _client.subscribe().listen(
      (control_pb.FanStatusResponse data) {
        setState(() {
          _fanStatus = data;
        });
      }
    );
  }

  double? _stringToDouble(String input) {
    if (input.isEmpty) return null;
    try {
      return double.parse(input);
    } catch (e) {
      return null;
    }
  }

  bool _isValidTimeFormat(String input) {
    // 정규식: HH:MM 형식인지 확인
    final regex = RegExp(r'^(\d{1,2}):(\d{1,2})$');
    final match = regex.firstMatch(input);

    if (match == null) return false;

    // 그룹에서 숫자 추출
    int hour = int.parse(match.group(1)!);
    int minute = int.parse(match.group(2)!);

    // 시간과 분 범위 확인
    return (0 <= hour && hour <= 23) && (0 <= minute && minute <= 59);
  }

  void config({
    bool? isFanOn,
    double? offTemperature,
    double? onTemperature,
    String? controlOffTime,
    String? controlOnTime,
  }) {
    final control_pb.FanConfigRequest request = control_pb.FanConfigRequest(
      isFanOn: isFanOn ?? _fanStatus!.isFanOn,
      offTemperature: offTemperature ?? _fanStatus!.offTemperature,
      onTemperature: onTemperature ?? _fanStatus!.onTemperature,
      controlOffTime: controlOffTime ?? _fanStatus!.controlOffTime,
      controlOnTime: controlOnTime ?? _fanStatus!.controlOnTime,
    );
    _client.setConfig(request);
  }
}
