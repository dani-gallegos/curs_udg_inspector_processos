///
//  Generated code. Do not modify.
//  source: process_viewer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listRequestDescriptor instead')
const ListRequest$json = const {
  '1': 'ListRequest',
};

/// Descriptor for `ListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRequestDescriptor = $convert.base64Decode('CgtMaXN0UmVxdWVzdA==');
@$core.Deprecated('Use listResponseDescriptor instead')
const ListResponse$json = const {
  '1': 'ListResponse',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.ProcessDto', '10': 'items'},
  ],
};

/// Descriptor for `ListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listResponseDescriptor = $convert.base64Decode('CgxMaXN0UmVzcG9uc2USIQoFaXRlbXMYASADKAsyCy5Qcm9jZXNzRHRvUgVpdGVtcw==');
@$core.Deprecated('Use getRequestDescriptor instead')
const GetRequest$json = const {
  '1': 'GetRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRequestDescriptor = $convert.base64Decode('CgpHZXRSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');
@$core.Deprecated('Use getResponseDescriptor instead')
const GetResponse$json = const {
  '1': 'GetResponse',
  '2': const [
    const {'1': 'found', '3': 1, '4': 1, '5': 8, '10': 'found'},
    const {'1': 'item', '3': 2, '4': 1, '5': 11, '6': '.ProcessDetailDto', '10': 'item'},
  ],
};

/// Descriptor for `GetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getResponseDescriptor = $convert.base64Decode('CgtHZXRSZXNwb25zZRIUCgVmb3VuZBgBIAEoCFIFZm91bmQSJQoEaXRlbRgCIAEoCzIRLlByb2Nlc3NEZXRhaWxEdG9SBGl0ZW0=');
@$core.Deprecated('Use killRequestDescriptor instead')
const KillRequest$json = const {
  '1': 'KillRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `KillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List killRequestDescriptor = $convert.base64Decode('CgtLaWxsUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');
@$core.Deprecated('Use killResponseDescriptor instead')
const KillResponse$json = const {
  '1': 'KillResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `KillResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List killResponseDescriptor = $convert.base64Decode('CgxLaWxsUmVzcG9uc2USFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
