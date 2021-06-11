import 'package:cursudg_client/generated/grpc/login.pbgrpc.dart';
import 'package:grpc/grpc_web.dart';
import 'authenticator_interface.dart';

class WebAuthenticator implements Authenticator {
  static const String _backendSchema = 'http';
  static const String _backendServer = 'localhost';
  static const int _backendPort = 5000;
  final GrpcWebClientChannel _channel;

  WebAuthenticator()
      : _channel =
            GrpcWebClientChannel.xhr(Uri.parse('$_backendSchema://$_backendServer:$_backendPort'));

  AuthenticatorClient get client => AuthenticatorClient(_channel);
}

Authenticator getAuthenticator() => WebAuthenticator();
