import 'package:cursudg_client/generated/grpc/login.pb.dart';
import 'package:cursudg_client/services/authenticator/authenticator_interface.dart';
import 'package:cursudg_client/services/process_viewer/process_viewer_interface.dart';

class AuthenticatorService {
  final Authenticator _authenticator = Authenticator();

  Future<bool> login(String user, String password) async {
    var response = await _authenticator.client.login(
      LoginRequest(
        user: user,
        password: password,
      ),
    );

    if (response.valid) ProcessViewer().authToken = response.token;

    return response.valid;
  }
}
