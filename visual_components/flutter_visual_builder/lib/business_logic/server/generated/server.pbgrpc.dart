///
//  Generated code. Do not modify.
//  source: server.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart';

import 'server.pb.dart';
export 'server.pb.dart';

class ServerClient extends Client {
  static final _$initialize =
      new ClientMethod<InitializeFileRequest, HelloReply>(
          '/helloworld.Server/Initialize',
          (InitializeFileRequest value) => value.writeToBuffer(),
          (List<int> value) => new HelloReply.fromBuffer(value));
  static final _$getFields =
      new ClientMethod<GetFieldsRequest, GetFieldsResponse>(
          '/helloworld.Server/GetFields',
          (GetFieldsRequest value) => value.writeToBuffer(),
          (List<int> value) => new GetFieldsResponse.fromBuffer(value));
  static final _$streamUpdate = new ClientMethod<FieldUpdate, HelloReply>(
      '/helloworld.Server/StreamUpdate',
      (FieldUpdate value) => value.writeToBuffer(),
      (List<int> value) => new HelloReply.fromBuffer(value));
  static final _$streamSelected =
      new ClientMethod<SelectStream, SelectedWidgetWithProperties>(
          '/helloworld.Server/StreamSelected',
          (SelectStream value) => value.writeToBuffer(),
          (List<int> value) =>
              new SelectedWidgetWithProperties.fromBuffer(value));
  static final _$streamSourceCode =
      new ClientMethod<InitSourceCodeStream, SourceCode>(
          '/helloworld.Server/StreamSourceCode',
          (InitSourceCodeStream value) => value.writeToBuffer(),
          (List<int> value) => new SourceCode.fromBuffer(value));
  static final _$streamRemovedWidgets = new ClientMethod<Empty, RemovedWidget>(
      '/helloworld.Server/StreamRemovedWidgets',
      (Empty value) => value.writeToBuffer(),
      (List<int> value) => new RemovedWidget.fromBuffer(value));

  ServerClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<HelloReply> initialize(InitializeFileRequest request,
      {CallOptions options}) {
    final call = $createCall(
        _$initialize, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<GetFieldsResponse> getFields(GetFieldsRequest request,
      {CallOptions options}) {
    final call = $createCall(
        _$getFields, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<HelloReply> streamUpdate($async.Stream<FieldUpdate> request,
      {CallOptions options}) {
    final call = $createCall(_$streamUpdate, request, options: options);
    return new ResponseFuture(call);
  }

  ResponseStream<SelectedWidgetWithProperties> streamSelected(
      SelectStream request,
      {CallOptions options}) {
    final call = $createCall(
        _$streamSelected, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseStream(call);
  }

  ResponseStream<SourceCode> streamSourceCode(InitSourceCodeStream request,
      {CallOptions options}) {
    final call = $createCall(
        _$streamSourceCode, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseStream(call);
  }

  ResponseStream<RemovedWidget> streamRemovedWidgets(Empty request,
      {CallOptions options}) {
    final call = $createCall(
        _$streamRemovedWidgets, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseStream(call);
  }
}

abstract class ServerServiceBase extends Service {
  String get $name => 'helloworld.Server';

  ServerServiceBase() {
    $addMethod(new ServiceMethod<InitializeFileRequest, HelloReply>(
        'Initialize',
        initialize_Pre,
        false,
        false,
        (List<int> value) => new InitializeFileRequest.fromBuffer(value),
        (HelloReply value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<GetFieldsRequest, GetFieldsResponse>(
        'GetFields',
        getFields_Pre,
        false,
        false,
        (List<int> value) => new GetFieldsRequest.fromBuffer(value),
        (GetFieldsResponse value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<FieldUpdate, HelloReply>(
        'StreamUpdate',
        streamUpdate,
        true,
        false,
        (List<int> value) => new FieldUpdate.fromBuffer(value),
        (HelloReply value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<SelectStream, SelectedWidgetWithProperties>(
        'StreamSelected',
        streamSelected_Pre,
        false,
        true,
        (List<int> value) => new SelectStream.fromBuffer(value),
        (SelectedWidgetWithProperties value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<InitSourceCodeStream, SourceCode>(
        'StreamSourceCode',
        streamSourceCode_Pre,
        false,
        true,
        (List<int> value) => new InitSourceCodeStream.fromBuffer(value),
        (SourceCode value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<Empty, RemovedWidget>(
        'StreamRemovedWidgets',
        streamRemovedWidgets_Pre,
        false,
        true,
        (List<int> value) => new Empty.fromBuffer(value),
        (RemovedWidget value) => value.writeToBuffer()));
  }

  $async.Future<HelloReply> initialize_Pre(
      ServiceCall call, $async.Future request) async {
    return initialize(call, await request);
  }

  $async.Future<GetFieldsResponse> getFields_Pre(
      ServiceCall call, $async.Future request) async {
    return getFields(call, await request);
  }

  $async.Stream<SelectedWidgetWithProperties> streamSelected_Pre(
      ServiceCall call, $async.Future request) async* {
    yield* streamSelected(call, (await request) as SelectStream);
  }

  $async.Stream<SourceCode> streamSourceCode_Pre(
      ServiceCall call, $async.Future request) async* {
    yield* streamSourceCode(call, (await request) as InitSourceCodeStream);
  }

  $async.Stream<RemovedWidget> streamRemovedWidgets_Pre(
      ServiceCall call, $async.Future request) async* {
    yield* streamRemovedWidgets(call, (await request) as Empty);
  }

  $async.Future<HelloReply> initialize(
      ServiceCall call, InitializeFileRequest request);
  $async.Future<GetFieldsResponse> getFields(
      ServiceCall call, GetFieldsRequest request);
  $async.Future<HelloReply> streamUpdate(
      ServiceCall call, $async.Stream<FieldUpdate> request);
  $async.Stream<SelectedWidgetWithProperties> streamSelected(
      ServiceCall call, SelectStream request);
  $async.Stream<SourceCode> streamSourceCode(
      ServiceCall call, InitSourceCodeStream request);
  $async.Stream<RemovedWidget> streamRemovedWidgets(
      ServiceCall call, Empty request);
}
