import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/ui.dart';
import 'splashcontroler.dart';

final splashProvider = SimpleProvider(
  (_) => splashcontroler(),
);

class SplasPage extends StatelessWidget {
  const SplasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener<splashcontroler>(
        provider: splashProvider,
        onChange: (_, controller) {
          final routeName = controller.routeName;
          if (routeName != null) {
            Navigator.pushReplacementNamed(context, routeName);
          }
          //print("${controller.routeName}");
        },
        builder: (_, __) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        });
  }
}
