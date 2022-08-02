import 'package:animate_do/animate_do.dart';
import 'package:atel_redes_telecom_prot/app/ui/globalwidgets/inputfield.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/login/control/logincontrol.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/login/utils/sendloginform.dart';
import 'package:atel_redes_telecom_prot/app/utils/emailvalidator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/ui.dart';
import '../../routes/routes.dart';

final LoginProvider1 = SimpleProvider(
  (_) => LoginControl(),
);

class LoginAdmin extends StatefulWidget {
  const LoginAdmin({Key? key}) : super(key: key);
  //final _controler = 'adminatel@espe.edu.ec';
  //final _controler = LoginProvider.read;

  @override
  _LoginAdminState createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  final _controler = LoginProvider1.read;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderListener<LoginControl>(
        provider: LoginProvider1,
        builder: (_, controller1) {
          return Scaffold(
              backgroundColor: const Color(0xFF066163),
              body: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    ElasticInLeft(
                      duration: const Duration(seconds: 2),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                    primary: (const Color(0xFFCDBE78)),
                                    textStyle: const TextStyle(fontSize: 25),
                                    backgroundColor: const Color(0xFF383838)),
                                onPressed: () {},
                                child: const Text(
                                  "Ingrese la Credencial otorgada al administrador",
                                  textAlign: TextAlign.center,
                                )),
                            const SizedBox(
                              height: 20,
                              width: 20,
                            ),
                            Center(
                              child: Card(
                                color: (const Color(0xffcdbe78)),
                                margin: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20, bottom: 50),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElasticInLeft(
                                          duration: const Duration(seconds: 2),
                                          child: Form(
                                            key: _controler.formKey,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  InputField(
                                                      onChanged: controller1
                                                          .onEmailChange,
                                                      inputType: TextInputType
                                                          .emailAddress,
                                                      validator: (text) {
                                                        if (isValiEmail1(
                                                            text!)) {
                                                          return null;
                                                        }
                                                        return "Credencial incorrecta";
                                                      },
                                                      label:
                                                          "Credencial del usuario",
                                                      child: const Icon(
                                                          Icons.email)),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  InputField(
                                                      onChanged: controller1
                                                          .onPassChange,
                                                      ispass: true,
                                                      validator: (text) {
                                                        if (text!
                                                                .trim()
                                                                .length >=
                                                            6) {
                                                          return null;
                                                        }
                                                        return "Contraseña incorrecta";
                                                      },
                                                      label: "Contraseña",
                                                      child: const Icon(
                                                          Icons.key)),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  CupertinoButton(
                                                      color: Color(0xFF383838),
                                                      child: Text('Ingresar'),
                                                      onPressed: () =>
                                                          sendLoginForm1(
                                                              context)),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                ]),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    )
                  ])),
              floatingActionButton: FloatingActionButton(
                  backgroundColor: Color(0xFFcdbe78),
                  child: const Icon(Icons.keyboard_return),
                  onPressed: () =>
                      router.pushNamedAndRemoveUntil(Routes.LOGIN)));
        });
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  }
}
