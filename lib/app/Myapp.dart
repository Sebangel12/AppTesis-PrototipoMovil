import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'ui/routes/app_routes.dart';
import 'ui/routes/routes.dart';

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prototipo de Aplicacion Movil y Web',
      navigatorKey: router.navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.SPLASH,
      navigatorObservers: [
        router.observer,
      ],
      routes: appRoutes,
    );
  }
}
