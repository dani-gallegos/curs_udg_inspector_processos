///
//  Generated code. Do not modify.
//  source: process_viewer.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'process_viewer.pb.dart' as $1;
export 'process_viewer.pb.dart';

class ProcessViewerClient extends $grpc.Client {
  static final _$list = $grpc.ClientMethod<$1.ListRequest, $1.ListResponse>(
      '/ProcessViewer/List',
      ($1.ListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ListResponse.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$1.GetRequest, $1.GetResponse>(
      '/ProcessViewer/Get',
      ($1.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetResponse.fromBuffer(value));
  static final _$kill = $grpc.ClientMethod<$1.KillRequest, $1.KillResponse>(
      '/ProcessViewer/Kill',
      ($1.KillRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.KillResponse.fromBuffer(value));

  ProcessViewerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.ListResponse> list($1.ListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetResponse> get($1.GetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$1.KillResponse> kill($1.KillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$kill, request, options: options);
  }
}

abstract class ProcessViewerServiceBase extends $grpc.Service {
  $core.String get $name => 'ProcessViewer';

  ProcessViewerServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.ListRequest, $1.ListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListRequest.fromBuffer(value),
        ($1.ListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetRequest, $1.GetResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetRequest.fromBuffer(value),
        ($1.GetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.KillRequest, $1.KillResponse>(
        'Kill',
        kill_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.KillRequest.fromBuffer(value),
        ($1.KillResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.ListResponse> list_Pre(
      $grpc.ServiceCall call, $async.Future<$1.ListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$1.GetResponse> get_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$1.KillResponse> kill_Pre(
      $grpc.ServiceCall call, $async.Future<$1.KillRequest> request) async {
    return kill(call, await request);
  }

  $async.Future<$1.ListResponse> list(
      $grpc.ServiceCall call, $1.ListRequest request);
  $async.Future<$1.GetResponse> get(
      $grpc.ServiceCall call, $1.GetRequest request);
  $async.Future<$1.KillResponse> kill(
      $grpc.ServiceCall call, $1.KillRequest request);
}
