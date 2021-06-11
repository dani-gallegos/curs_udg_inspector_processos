import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../../generated/grpc/process_viewer.pbgrpc.dart';
import 'process_viewer_interface.dart';

class IOProcessViewer implements ProcessViewer {
  static const String _backendServer = 'localhost'; //'127.0.0.1';
  static const int _backendPort = 5000;
  final ClientChannel _channel;
  static String? _authToken;

  IOProcessViewer()
      : _channel = ClientChannel(
          _backendServer,
          port: _backendPort,
          options: const ChannelOptions(
            credentials: ChannelCredentials.insecure(),
          ),
        );
  ProcessViewerClient get client => ProcessViewerClient(_channel, options: callOptions);

  CallOptions get callOptions => CallOptions(providers: [customAuthProvider]);

  set authToken(String value) => _authToken = value;

  Future<void> customAuthProvider(Map<String, String> metadata, String uri) async {
    if (_authToken != null) metadata['authorization'] = _authToken!;
  }
}

ProcessViewer getProcessViewer() => IOProcessViewer();
