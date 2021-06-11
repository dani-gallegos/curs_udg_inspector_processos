import 'package:cursudg_client/generated/grpc/login.pbgrpc.dart';
import 'authenticator_stub.dart'
    if (dart.library.io) 'authenticator_io.dart'
    if (dart.library.html) 'authenticator_web.dart';

abstract class Authenticator {
  AuthenticatorClient get client;
  factory Authenticator() => getAuthenticator();
}
