///
//  Generated code. Do not modify.
//  source: process_models.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/duration.pb.dart' as $2;

class ProcessDto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProcessDto', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileName')
    ..hasRequiredFields = false
  ;

  ProcessDto._() : super();
  factory ProcessDto({
    $core.int? id,
    $core.String? name,
    $core.String? fileName,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (fileName != null) {
      _result.fileName = fileName;
    }
    return _result;
  }
  factory ProcessDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProcessDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProcessDto clone() => ProcessDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProcessDto copyWith(void Function(ProcessDto) updates) => super.copyWith((message) => updates(message as ProcessDto)) as ProcessDto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProcessDto create() => ProcessDto._();
  ProcessDto createEmptyInstance() => create();
  static $pb.PbList<ProcessDto> createRepeated() => $pb.PbList<ProcessDto>();
  @$core.pragma('dart2js:noInline')
  static ProcessDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProcessDto>(create);
  static ProcessDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get fileName => $_getSZ(2);
  @$pb.TagNumber(3)
  set fileName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFileName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileName() => clearField(3);
}

class ProcessDetailDto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProcessDetailDto', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'moduleName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileName')
    ..aOM<$2.Duration>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalProcessorTime', protoName: 'totalProcessorTime', subBuilder: $2.Duration.create)
    ..aOM<$2.Duration>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userProcessorTime', protoName: 'userProcessorTime', subBuilder: $2.Duration.create)
    ..hasRequiredFields = false
  ;

  ProcessDetailDto._() : super();
  factory ProcessDetailDto({
    $core.int? id,
    $core.String? name,
    $core.String? moduleName,
    $core.String? fileName,
    $2.Duration? totalProcessorTime,
    $2.Duration? userProcessorTime,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (moduleName != null) {
      _result.moduleName = moduleName;
    }
    if (fileName != null) {
      _result.fileName = fileName;
    }
    if (totalProcessorTime != null) {
      _result.totalProcessorTime = totalProcessorTime;
    }
    if (userProcessorTime != null) {
      _result.userProcessorTime = userProcessorTime;
    }
    return _result;
  }
  factory ProcessDetailDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProcessDetailDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProcessDetailDto clone() => ProcessDetailDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProcessDetailDto copyWith(void Function(ProcessDetailDto) updates) => super.copyWith((message) => updates(message as ProcessDetailDto)) as ProcessDetailDto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProcessDetailDto create() => ProcessDetailDto._();
  ProcessDetailDto createEmptyInstance() => create();
  static $pb.PbList<ProcessDetailDto> createRepeated() => $pb.PbList<ProcessDetailDto>();
  @$core.pragma('dart2js:noInline')
  static ProcessDetailDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProcessDetailDto>(create);
  static ProcessDetailDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get moduleName => $_getSZ(2);
  @$pb.TagNumber(3)
  set moduleName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasModuleName() => $_has(2);
  @$pb.TagNumber(3)
  void clearModuleName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get fileName => $_getSZ(3);
  @$pb.TagNumber(4)
  set fileName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFileName() => $_has(3);
  @$pb.TagNumber(4)
  void clearFileName() => clearField(4);

  @$pb.TagNumber(5)
  $2.Duration get totalProcessorTime => $_getN(4);
  @$pb.TagNumber(5)
  set totalProcessorTime($2.Duration v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalProcessorTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalProcessorTime() => clearField(5);
  @$pb.TagNumber(5)
  $2.Duration ensureTotalProcessorTime() => $_ensure(4);

  @$pb.TagNumber(6)
  $2.Duration get userProcessorTime => $_getN(5);
  @$pb.TagNumber(6)
  set userProcessorTime($2.Duration v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserProcessorTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserProcessorTime() => clearField(6);
  @$pb.TagNumber(6)
  $2.Duration ensureUserProcessorTime() => $_ensure(5);
}

