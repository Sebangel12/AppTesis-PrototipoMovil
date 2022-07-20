import 'package:flutter_meedu/meedu.dart';
import '../../../../domain/repositories/authrepos.dart';
import '../../../../domain/response/resetpassrespons.dart';

class ResetPassControl extends SimpleNotifier {
  String _email = "";
  String get email => _email;

  final _authrepor = Get.find<authrepor>();

  void onEmailChanged(String text) {
    _email = text;
  }

  Future<ResetPassResponse> submit() {
    return _authrepor.sendResetPassLink(email);
  }
}
