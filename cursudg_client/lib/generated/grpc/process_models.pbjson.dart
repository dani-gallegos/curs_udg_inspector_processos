///
//  Generated code. Do not modify.
//  source: process_models.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use processDtoDescriptor instead')
const ProcessDto$json = const {
  '1': 'ProcessDto',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'file_name', '3': 3, '4': 1, '5': 9, '10': 'fileName'},
  ],
};

/// Descriptor for `ProcessDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List processDtoDescriptor = $convert.base64Decode('CgpQcm9jZXNzRHRvEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhsKCWZpbGVfbmFtZRgDIAEoCVIIZmlsZU5hbWU=');
@$core.Deprecated('Use processDetailDtoDescriptor instead')
const ProcessDetailDto$json = const {
  '1': 'ProcessDetailDto',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'module_name', '3': 3, '4': 1, '5': 9, '10': 'moduleName'},
    const {'1': 'file_name', '3': 4, '4': 1, '5': 9, '10': 'fileName'},
    const {'1': 'totalProcessorTime', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'totalProcessorTime'},
    const {'1': 'userProcessorTime', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'userProcessorTime'},
  ],
};

/// Descriptor for `ProcessDetailDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List processDetailDtoDescriptor = $convert.base64Decode('ChBQcm9jZXNzRGV0YWlsRHRvEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEh8KC21vZHVsZV9uYW1lGAMgASgJUgptb2R1bGVOYW1lEhsKCWZpbGVfbmFtZRgEIAEoCVIIZmlsZU5hbWUSSQoSdG90YWxQcm9jZXNzb3JUaW1lGAUgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uUhJ0b3RhbFByb2Nlc3NvclRpbWUSRwoRdXNlclByb2Nlc3NvclRpbWUYBiABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SEXVzZXJQcm9jZXNzb3JUaW1l');
