import 'package:firebase_auth/firebase_auth.dart';

class SingUpData {
  final String name, lastname, email, pass;

  SingUpData({
    required this.name,
    required this.lastname,
    required this.email,
    required this.pass,
  });
}

class SingUpResponse {
  final String? error;
  final User? user;

  SingUpResponse(this.error, this.user);
}
