import 'package:atel_redes_telecom_prot/app/ui/globalwidgets/ingresocod.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/Menu/LoginAdmin.dart';
import '../pages/ForgotPass/resetpass.dart';
import '../pages/InfCursos/InfAppMovil.dart';
import '../pages/InfCursos/InfBD.dart';
import '../pages/InfCursos/InfFunProg.dart';
import '../pages/InfCursos/InfProgVis.dart';
import '../pages/Menu/MenuE.dart';
import '../pages/Menu/menu.dart';
import '../pages/login/loginpage.dart';
import '../pages/register/registerpages.dart';
import '../pages/splash/splash_pag.dart';
import 'routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' show Widget, BuildContext;

Map<String, Widget Function(BuildContext)> get appRoutes => {
      Routes.SPLASH: (_) => const SplasPage(), //pantalla cargadno
      Routes.LOGIN: (_) => LoginPage(), // pantalla login
      Routes.HOME: (_) => const MenuDocente(),
      Routes.Home1: (_) => const MenuEstudiante(),
      Routes.LOGINADMIN: (_) => const LoginAdmin(),
      Routes.REGISTER: (_) => const RegistroUsers(), //pantalla de registrp
      Routes.RESET_PASS: (_) => const ResetPass(), //pantalla reset pass
      Routes.INF_CURSO_BD: (_) => const InfCursoBD(), //pantalla reset pass
      Routes.INF_CURSO_FUNPROG: (_) => const InfCursoFunProg(),
      Routes.INF_CURSO_PROGAPP: (_) => const InfCursoProgAPP(),
      Routes.INF_CURSO_PROGVIS: (_) => const InfCursoProgVis(),
      Routes.CONTRON_ACT: (_) => codigo(),
    };
