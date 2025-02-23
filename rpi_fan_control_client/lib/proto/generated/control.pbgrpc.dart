//
//  Generated code. Do not modify.
//  source: control.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'control.pb.dart' as $0;

export 'control.pb.dart';

@$pb.GrpcServiceName('control.FanControlService')
class FanControlServiceClient extends $grpc.Client {
  static final _$streamFanStatus = $grpc.ClientMethod<$0.FanStatusRequest, $0.FanStatusResponse>(
      '/control.FanControlService/StreamFanStatus',
      ($0.FanStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FanStatusResponse.fromBuffer(value));
  static final _$setFanConfig = $grpc.ClientMethod<$0.FanConfigRequest, $0.FanConfigResponse>(
      '/control.FanControlService/SetFanConfig',
      ($0.FanConfigRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FanConfigResponse.fromBuffer(value));

  FanControlServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.FanStatusResponse> streamFanStatus($0.FanStatusRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamFanStatus, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.FanConfigResponse> setFanConfig($0.FanConfigRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setFanConfig, request, options: options);
  }
}

@$pb.GrpcServiceName('control.FanControlService')
abstract class FanControlServiceBase extends $grpc.Service {
  $core.String get $name => 'control.FanControlService';

  FanControlServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.FanStatusRequest, $0.FanStatusResponse>(
        'StreamFanStatus',
        streamFanStatus_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.FanStatusRequest.fromBuffer(value),
        ($0.FanStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FanConfigRequest, $0.FanConfigResponse>(
        'SetFanConfig',
        setFanConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FanConfigRequest.fromBuffer(value),
        ($0.FanConfigResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.FanStatusResponse> streamFanStatus_Pre($grpc.ServiceCall call, $async.Future<$0.FanStatusRequest> request) async* {
    yield* streamFanStatus(call, await request);
  }

  $async.Future<$0.FanConfigResponse> setFanConfig_Pre($grpc.ServiceCall call, $async.Future<$0.FanConfigRequest> request) async {
    return setFanConfig(call, await request);
  }

  $async.Stream<$0.FanStatusResponse> streamFanStatus($grpc.ServiceCall call, $0.FanStatusRequest request);
  $async.Future<$0.FanConfigResponse> setFanConfig($grpc.ServiceCall call, $0.FanConfigRequest request);
}
