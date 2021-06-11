import 'package:grpc/grpc_web.dart';
import '../../generated/grpc/process_viewer.pbgrpc.dart';
import 'process_viewer_interface.dart';

class WebProcessViewer implements ProcessViewer {
  static const String _backendSchema = 'http';
  static const String _backendServer = 'localhost';
  static const int _backendPort = 5000;
  final GrpcWebClientChannel _channel;
  String? _authToken;

  WebProcessViewer()
      : _channel =
            GrpcWebClientChannel.xhr(Uri.parse('$_backendSchema://$_backendServer:$_backendPort'));

  ProcessViewerClient get client => ProcessViewerClient(_channel, options: callOptions);

  set authToken(String value) => _authToken = value;

  CallOptions get callOptions => CallOptions(providers: [customAuthProvider]);

  Future<void> customAuthProvider(Map<String, String> metadata, String uri) async {
    if (_authToken != null) metadata['authorization'] = _authToken!;
  }
}

ProcessViewer getProcessViewer() => WebProcessViewer();
