import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import '../../../../domain/repositories/authrepos.dart';

class LoginControl extends SimpleNotifier {
  String _email = '', _pass = '';
  final _authrepor = Get.find<authrepor>();
  final GlobalKey<FormState> formKey = GlobalKey();

  void onEmailChange(String text) {
    _email = text;
  }

  void onPassChange(String text) {
    _pass = text;
  }

  Future<SingInResponse> submmit() {
    return _authrepor.singinwithemailandpass(_email, _pass);
  }
}
