import 'dart:async';
import 'package:grpc/grpc.dart';

import 'package:rpi_fan_control_client/proto/generated/control.pbgrpc.dart' as control_pb;

class FanControlClient {
  late control_pb.FanControlServiceClient _client;
  final String key;
  final ClientChannel _channel;

  FanControlClient(String host, int port, this.key)
      : _channel = ClientChannel(
          host,
          port: port,
          options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
        ) {
    _client = control_pb.FanControlServiceClient(_channel);
  }

  Stream<control_pb.FanStatusResponse> subscribe() async* {
    final request = control_pb.FanStatusRequest()..key = key;
    final responseStream = _client.streamFanStatus(request);

    yield* responseStream;
  }

  Future<control_pb.FanConfigResponse> setConfig(control_pb.FanConfigRequest config) async {
    return await _client.setFanConfig(config);
  }

  Future<void> shutdown() async {
    await _channel.shutdown();
  }
}
