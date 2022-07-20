import 'package:firebase_auth/firebase_auth.dart';
import '../response/resetpassrespons.dart';

abstract class authrepor {
  Future<User?> get user;
  // ignore: non_constant_identifier_names
  Future<void> SingOut();
  Future<SingInResponse> singinwithemailandpass(String email, String pass);

  Future<ResetPassResponse> sendResetPassLink(String email);
}

class SingInResponse {
  final SingInError? error;
  final User? user;

  SingInResponse(this.error, this.user);
}

enum SingInError {
  networkResquestFailed,
  userDisabled,
  userNotFound,
  wrongPassword,
  unknown
}
