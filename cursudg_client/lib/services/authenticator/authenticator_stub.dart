import 'authenticator_interface.dart';

Authenticator getAuthenticator() =>
    throw UnsupportedError('Cannot create a GRPCChannel without the packages dart:html or dart:io');
