import 'package:animate_do/animate_do.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActBD/Parciales/Parcial1/MsemBD1P.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActBD/Parciales/Parcial2/MsemBD2P.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActBD/Parciales/Parcial3/MsemBD3P.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActFunProg/Parciales/Parcial1/MsemFP1P.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActFunProg/Parciales/Parcial2/MsemFP2P.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActFunProg/Parciales/Parcial3/MsemFP3P.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActProgMov/Parciales/Parcial1/MsemPM1P.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActProgMov/Parciales/Parcial2/MsemPM2P.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActProgMov/Parciales/Parcial3/MsemPM3P.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActProgVis/Parciales/Parcial1/MsemPV1P.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActProgVis/Parciales/Parcial2/MsemPV2P.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActProgVis/Parciales/Parcial3/MsemPV3P.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/ui.dart';

import '../../../domain/repositories/authrepos.dart';
import '../../routes/routes.dart';

class MenuAdmin extends StatelessWidget {
  const MenuAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF066163),
      appBar: AppBar(
        backgroundColor: const Color(0xFF383838),
        centerTitle: true,
        title: const Text('Prototipo Aplicación Movil y Web'),
      ),
      body: Container(
        alignment: Alignment.centerRight,
        child: ListView(
          children: [
            ElasticInLeft(
              duration: const Duration(seconds: 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  //-------------------Titulo pagina---------------------------
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(right: 50, left: 50),
                          primary: (const Color(0xFFCDBE78)),
                          textStyle: const TextStyle(fontSize: 25),
                          backgroundColor: const Color(0xFF383838)),
                      onPressed: () {},
                      child: const Text(
                        "Menú de administración de las materias",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  //-----------------------------------------------------------
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 5),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(right: 50, left: 50),
                          primary: (const Color(0xFFCDBE78)),
                          textStyle: const TextStyle(fontSize: 25),
                          backgroundColor: const Color(0xFF383838)),
                      onPressed: () {},
                      child: const Text("Aplicaciones Móviles"),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CupertinoButton(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          color: (const Color(0xFFCDBE78)),
                          child: const Text(
                            'Primer parcial',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const semanasPMparcial1()))),
                      const SizedBox(
                        width: 13,
                      ),
                      CupertinoButton(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          color: (const Color(0xFFCDBE78)),
                          child: const Text(
                            'Segundo parcial',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const semanasPMparcial2()))),
                      const SizedBox(
                        width: 13,
                      ),
                      CupertinoButton(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          color: (const Color(0xFFCDBE78)),
                          child: const Text(
                            'Tercer parcial',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const semanasPMparcial3()))),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  //-------------------------------------------------------------
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 5),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(right: 50, left: 50),
                            primary: (const Color(0xFFCDBE78)),
                            textStyle: const TextStyle(fontSize: 25),
                            backgroundColor: const Color(0xFF383838)),
                        onPressed: () {},
                        child: const Text("Bases de Datos")),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CupertinoButton(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          color: (const Color(0xFFCDBE78)),
                          child: const Text(
                            'Primer parcial',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const semanasBDparcial1()))),
                      const SizedBox(
                        width: 13,
                      ),
                      CupertinoButton(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          color: (const Color(0xFFCDBE78)),
                          child: const Text(
                            'Segundo parcial',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const semanasBDparcial2()))),
                      const SizedBox(
                        width: 13,
                      ),
                      CupertinoButton(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          color: (const Color(0xFFCDBE78)),
                          child: const Text(
                            'Tercer parcial',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const semanasBDparcial3()))),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  //-------------------------------------------------------------
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 5),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            primary: (const Color(0xFFCDBE78)),
                            textStyle: const TextStyle(fontSize: 25),
                            backgroundColor: const Color(0xFF383838)),
                        onPressed: () {},
                        child: const Text("Fundamentos de programación")),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CupertinoButton(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          color: (const Color(0xFFCDBE78)),
                          child: const Text(
                            'Primer parcial',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const semanasFPparcial1()))),
                      const SizedBox(
                        width: 13,
                      ),
                      CupertinoButton(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          color: (const Color(0xFFCDBE78)),
                          child: const Text(
                            'Segundo parcial',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const semanasFPparcial2()))),
                      const SizedBox(
                        width: 13,
                      ),
                      CupertinoButton(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          color: (const Color(0xFFCDBE78)),
                          child: const Text(
                            'Tercer parcial',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const semanasFPparcial3()))),
                    ],
                  ),
                  //-------------------------------------------------------------
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 5),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            primary: (const Color(0xFFCDBE78)),
                            textStyle: const TextStyle(fontSize: 25),
                            backgroundColor: const Color(0xFF383838)),
                        onPressed: () {},
                        child: const Text("Programación Visual")),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CupertinoButton(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          color: (const Color(0xFFCDBE78)),
                          child: const Text(
                            'Primer parcial',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const semanasPVparcial1()))),
                      const SizedBox(
                        width: 13,
                      ),
                      CupertinoButton(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          color: (const Color(0xFFCDBE78)),
                          child: const Text(
                            'Segundo parcial',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const semanasPVparcial2()))),
                      const SizedBox(
                        width: 13,
                      ),
                      CupertinoButton(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          color: (const Color(0xFFCDBE78)),
                          child: const Text(
                            'Tercer parcial',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const semanasPVparcial3()))),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //-------------------------------------------------------------
                  CupertinoButton(
                    color: (const Color(0xFFCDBE78)),
                    padding: const EdgeInsets.only(right: 50, left: 50),
                    //textColor: Colors.black,
                    onPressed: () async {
                      await Get.find<authrepor>().SingOut();
                      router.pushNamedAndRemoveUntil(Routes.LOGIN);
                    },
                    child: const Text(
                      'Cerrar sesión',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
