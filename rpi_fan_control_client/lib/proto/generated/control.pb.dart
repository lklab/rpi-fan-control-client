//
//  Generated code. Do not modify.
//  source: control.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 서버 -> 클라이언트 요청 (요청 본문 없음)
class FanStatusRequest extends $pb.GeneratedMessage {
  factory FanStatusRequest({
    $core.String? key,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  FanStatusRequest._() : super();
  factory FanStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FanStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FanStatusRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'control'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FanStatusRequest clone() => FanStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FanStatusRequest copyWith(void Function(FanStatusRequest) updates) => super.copyWith((message) => updates(message as FanStatusRequest)) as FanStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FanStatusRequest create() => FanStatusRequest._();
  FanStatusRequest createEmptyInstance() => create();
  static $pb.PbList<FanStatusRequest> createRepeated() => $pb.PbList<FanStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static FanStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FanStatusRequest>(create);
  static FanStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
}

/// 서버 -> 클라이언트 응답 (스트리밍 메시지)
class FanStatusResponse extends $pb.GeneratedMessage {
  factory FanStatusResponse({
    $core.bool? isFanOn,
    $core.double? currentTemperature,
    $core.double? offTemperature,
    $core.double? onTemperature,
    $core.String? controlOffTime,
    $core.String? controlOnTime,
  }) {
    final $result = create();
    if (isFanOn != null) {
      $result.isFanOn = isFanOn;
    }
    if (currentTemperature != null) {
      $result.currentTemperature = currentTemperature;
    }
    if (offTemperature != null) {
      $result.offTemperature = offTemperature;
    }
    if (onTemperature != null) {
      $result.onTemperature = onTemperature;
    }
    if (controlOffTime != null) {
      $result.controlOffTime = controlOffTime;
    }
    if (controlOnTime != null) {
      $result.controlOnTime = controlOnTime;
    }
    return $result;
  }
  FanStatusResponse._() : super();
  factory FanStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FanStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FanStatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'control'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isFanOn')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'currentTemperature', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'offTemperature', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'onTemperature', $pb.PbFieldType.OF)
    ..aOS(5, _omitFieldNames ? '' : 'controlOffTime')
    ..aOS(6, _omitFieldNames ? '' : 'controlOnTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FanStatusResponse clone() => FanStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FanStatusResponse copyWith(void Function(FanStatusResponse) updates) => super.copyWith((message) => updates(message as FanStatusResponse)) as FanStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FanStatusResponse create() => FanStatusResponse._();
  FanStatusResponse createEmptyInstance() => create();
  static $pb.PbList<FanStatusResponse> createRepeated() => $pb.PbList<FanStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static FanStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FanStatusResponse>(create);
  static FanStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isFanOn => $_getBF(0);
  @$pb.TagNumber(1)
  set isFanOn($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsFanOn() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsFanOn() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get currentTemperature => $_getN(1);
  @$pb.TagNumber(2)
  set currentTemperature($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrentTemperature() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentTemperature() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get offTemperature => $_getN(2);
  @$pb.TagNumber(3)
  set offTemperature($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOffTemperature() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffTemperature() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get onTemperature => $_getN(3);
  @$pb.TagNumber(4)
  set onTemperature($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOnTemperature() => $_has(3);
  @$pb.TagNumber(4)
  void clearOnTemperature() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get controlOffTime => $_getSZ(4);
  @$pb.TagNumber(5)
  set controlOffTime($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasControlOffTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearControlOffTime() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get controlOnTime => $_getSZ(5);
  @$pb.TagNumber(6)
  set controlOnTime($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasControlOnTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearControlOnTime() => clearField(6);
}

/// 클라이언트 -> 서버 요청
class FanConfigRequest extends $pb.GeneratedMessage {
  factory FanConfigRequest({
    $core.String? key,
    $core.bool? isFanOn,
    $core.double? offTemperature,
    $core.double? onTemperature,
    $core.String? controlOffTime,
    $core.String? controlOnTime,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (isFanOn != null) {
      $result.isFanOn = isFanOn;
    }
    if (offTemperature != null) {
      $result.offTemperature = offTemperature;
    }
    if (onTemperature != null) {
      $result.onTemperature = onTemperature;
    }
    if (controlOffTime != null) {
      $result.controlOffTime = controlOffTime;
    }
    if (controlOnTime != null) {
      $result.controlOnTime = controlOnTime;
    }
    return $result;
  }
  FanConfigRequest._() : super();
  factory FanConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FanConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FanConfigRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'control'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOB(2, _omitFieldNames ? '' : 'isFanOn')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'offTemperature', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'onTemperature', $pb.PbFieldType.OF)
    ..aOS(5, _omitFieldNames ? '' : 'controlOffTime')
    ..aOS(6, _omitFieldNames ? '' : 'controlOnTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FanConfigRequest clone() => FanConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FanConfigRequest copyWith(void Function(FanConfigRequest) updates) => super.copyWith((message) => updates(message as FanConfigRequest)) as FanConfigRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FanConfigRequest create() => FanConfigRequest._();
  FanConfigRequest createEmptyInstance() => create();
  static $pb.PbList<FanConfigRequest> createRepeated() => $pb.PbList<FanConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static FanConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FanConfigRequest>(create);
  static FanConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isFanOn => $_getBF(1);
  @$pb.TagNumber(2)
  set isFanOn($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsFanOn() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsFanOn() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get offTemperature => $_getN(2);
  @$pb.TagNumber(3)
  set offTemperature($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOffTemperature() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffTemperature() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get onTemperature => $_getN(3);
  @$pb.TagNumber(4)
  set onTemperature($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOnTemperature() => $_has(3);
  @$pb.TagNumber(4)
  void clearOnTemperature() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get controlOffTime => $_getSZ(4);
  @$pb.TagNumber(5)
  set controlOffTime($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasControlOffTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearControlOffTime() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get controlOnTime => $_getSZ(5);
  @$pb.TagNumber(6)
  set controlOnTime($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasControlOnTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearControlOnTime() => clearField(6);
}

/// 클라이언트 -> 서버 응답 (설정 적용 여부 반환)
class FanConfigResponse extends $pb.GeneratedMessage {
  factory FanConfigResponse({
    $core.bool? success,
    $core.String? message,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  FanConfigResponse._() : super();
  factory FanConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FanConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FanConfigResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'control'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FanConfigResponse clone() => FanConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FanConfigResponse copyWith(void Function(FanConfigResponse) updates) => super.copyWith((message) => updates(message as FanConfigResponse)) as FanConfigResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FanConfigResponse create() => FanConfigResponse._();
  FanConfigResponse createEmptyInstance() => create();
  static $pb.PbList<FanConfigResponse> createRepeated() => $pb.PbList<FanConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static FanConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FanConfigResponse>(create);
  static FanConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
