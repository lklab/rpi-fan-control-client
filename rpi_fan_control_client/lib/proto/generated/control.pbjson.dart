//
//  Generated code. Do not modify.
//  source: control.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fanStatusRequestDescriptor instead')
const FanStatusRequest$json = {
  '1': 'FanStatusRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `FanStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fanStatusRequestDescriptor = $convert.base64Decode(
    'ChBGYW5TdGF0dXNSZXF1ZXN0EhAKA2tleRgBIAEoCVIDa2V5');

@$core.Deprecated('Use fanStatusResponseDescriptor instead')
const FanStatusResponse$json = {
  '1': 'FanStatusResponse',
  '2': [
    {'1': 'is_fan_on', '3': 1, '4': 1, '5': 8, '10': 'isFanOn'},
    {'1': 'current_temperature', '3': 2, '4': 1, '5': 2, '10': 'currentTemperature'},
    {'1': 'off_temperature', '3': 3, '4': 1, '5': 2, '10': 'offTemperature'},
    {'1': 'on_temperature', '3': 4, '4': 1, '5': 2, '10': 'onTemperature'},
    {'1': 'control_off_time', '3': 5, '4': 1, '5': 9, '10': 'controlOffTime'},
    {'1': 'control_on_time', '3': 6, '4': 1, '5': 9, '10': 'controlOnTime'},
  ],
};

/// Descriptor for `FanStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fanStatusResponseDescriptor = $convert.base64Decode(
    'ChFGYW5TdGF0dXNSZXNwb25zZRIaCglpc19mYW5fb24YASABKAhSB2lzRmFuT24SLwoTY3Vycm'
    'VudF90ZW1wZXJhdHVyZRgCIAEoAlISY3VycmVudFRlbXBlcmF0dXJlEicKD29mZl90ZW1wZXJh'
    'dHVyZRgDIAEoAlIOb2ZmVGVtcGVyYXR1cmUSJQoOb25fdGVtcGVyYXR1cmUYBCABKAJSDW9uVG'
    'VtcGVyYXR1cmUSKAoQY29udHJvbF9vZmZfdGltZRgFIAEoCVIOY29udHJvbE9mZlRpbWUSJgoP'
    'Y29udHJvbF9vbl90aW1lGAYgASgJUg1jb250cm9sT25UaW1l');

@$core.Deprecated('Use fanConfigRequestDescriptor instead')
const FanConfigRequest$json = {
  '1': 'FanConfigRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'is_fan_on', '3': 2, '4': 1, '5': 8, '10': 'isFanOn'},
    {'1': 'off_temperature', '3': 3, '4': 1, '5': 2, '10': 'offTemperature'},
    {'1': 'on_temperature', '3': 4, '4': 1, '5': 2, '10': 'onTemperature'},
    {'1': 'control_off_time', '3': 5, '4': 1, '5': 9, '10': 'controlOffTime'},
    {'1': 'control_on_time', '3': 6, '4': 1, '5': 9, '10': 'controlOnTime'},
  ],
};

/// Descriptor for `FanConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fanConfigRequestDescriptor = $convert.base64Decode(
    'ChBGYW5Db25maWdSZXF1ZXN0EhAKA2tleRgBIAEoCVIDa2V5EhoKCWlzX2Zhbl9vbhgCIAEoCF'
    'IHaXNGYW5PbhInCg9vZmZfdGVtcGVyYXR1cmUYAyABKAJSDm9mZlRlbXBlcmF0dXJlEiUKDm9u'
    'X3RlbXBlcmF0dXJlGAQgASgCUg1vblRlbXBlcmF0dXJlEigKEGNvbnRyb2xfb2ZmX3RpbWUYBS'
    'ABKAlSDmNvbnRyb2xPZmZUaW1lEiYKD2NvbnRyb2xfb25fdGltZRgGIAEoCVINY29udHJvbE9u'
    'VGltZQ==');

@$core.Deprecated('Use fanConfigResponseDescriptor instead')
const FanConfigResponse$json = {
  '1': 'FanConfigResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `FanConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fanConfigResponseDescriptor = $convert.base64Decode(
    'ChFGYW5Db25maWdSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhgKB21lc3NhZ2'
    'UYAiABKAlSB21lc3NhZ2U=');

