import 'package:atel_redes_telecom_prot/app/ui/pages/Menu/LoginAdmin.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/Menu/MenuAdmin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MenuEstudiante extends StatelessWidget {
  const MenuEstudiante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF066163),
      appBar: AppBar(
        backgroundColor: const Color(0xFF383838),
        centerTitle: true,
        title: const Text('Prototipo Aplicación Movil y Web'),
      ),
      body: const LoginAdmin(),
    );
  }
}

class AdminLogin extends StatelessWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const MenuAdmin();
            } else {
              return const LoginAdmin();
            }
          },
        ),
      );
}
