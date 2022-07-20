import 'package:flutter_meedu/meedu.dart';
import '../../../domain/repositories/authrepos.dart';
import '../../routes/routes.dart';

class splashcontroler extends SimpleNotifier {
  final _authrepository = Get.find<authrepor>();

  String? _routeName;
  String? get routeName => _routeName;

  splashcontroler() {
    //print("90");
    _init();
  }

  void _init() async {
    final user = await _authrepository.user;
    //si hay un user autentiticado va a "MenuEstudiantes" si no a register
    _routeName = user != null ? Routes.HOME : Routes.LOGIN;
    notify();
    //if (user != null) {
    //  print("56");
    // } else {
    // print("78");
    //}
  }
}
