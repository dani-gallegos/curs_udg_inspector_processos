import 'package:cursudg_client/generated/grpc/login.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'authenticator_interface.dart';

class IOAuthenticator implements Authenticator {
  static const String _backendServer = 'localhost'; //'127.0.0.1';
  static const int _backendPort = 5000;
  final ClientChannel _channel;

  IOAuthenticator()
      : _channel = ClientChannel(
          _backendServer,
          port: _backendPort,
          options: const ChannelOptions(
            credentials: ChannelCredentials.insecure(),
          ),
        );
  AuthenticatorClient get client => AuthenticatorClient(_channel);
}

Authenticator getAuthenticator() => IOAuthenticator();
