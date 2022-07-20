import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import '../../../../domain/inputs/singup.dart';
import '../../../../domain/repositories/singuprepos.dart';
import 'registerstate.dart';

class RegistControl extends StateNotifier<RegisterState> {
  RegistControl() : super(RegisterState.initialState);
  final GlobalKey<FormState> formKey = GlobalKey();

  final _SingUpRepository = Get.find<SingUpRepository>();

  Future<SingUpResponse> submit() {
    return _SingUpRepository.register(
      SingUpData(
          name: state.name,
          lastname: state.lastname,
          email: state.mail,
          pass: state.pass),
    );
  }

  void onNamechange(String text) {
    state = state.copyWith(name: text);
  }

  void onIDchange(String text) {
    state = state.copyWith(lastname: text);
  }

  void onEmailchange(String text) {
    state = state.copyWith(mail: text);
  }

  void onPasschange(String text) {
    state = state.copyWith(pass: text);
  }

  void onVPasshange(String text) {
    state = state.copyWith(vpass: text);
  }
}
