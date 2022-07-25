import 'package:animate_do/animate_do.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/Actividades/ActBD/Parciales/Parcial%201/AS1BD1P.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../data/urlsFP.dart';
import 'AS1FP3P.dart';
import 'AS2FP3P.dart';
import 'AS3FP3P.dart';
import 'AS4FP3P.dart';
import 'AS5FP3P.dart';
import 'AS6FP3P.dart';

class MActsemFPparcial3 extends StatelessWidget {
  const MActsemFPparcial3({Key? key}) : super(key: key);
//adminatel.redestel@espe.edu.ec
//#Adminredestel@2022

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF066163),
      appBar: AppBar(
        backgroundColor: const Color(0xFF383838),
        centerTitle: true,
        title: const Text('Fundamentos de Programación - P3'),
      ),
      body: Center(
        child: ListView(
          children: [
            Center(
              child: ElasticInLeft(
                duration: const Duration(seconds: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                            color: (const Color(0xFFCDBE78)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: const Text(
                              'Semana 1',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AS1FP3P()))),
                        CupertinoButton(
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFFPP3().url1);
                          },
                          child: const Text(
                            'Evaluación formativa',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                            color: (const Color(0xFFCDBE78)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: const Text(
                              'Semana 2',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AS2FP3P()))),
                        CupertinoButton(
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFFPP3().url2);
                          },
                          child: const Text(
                            'Evaluación formativa',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                            color: (const Color(0xFFCDBE78)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: const Text(
                              'Semana 3',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AS3FP3P()))),
                        CupertinoButton(
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFFPP3().url3);
                          },
                          child: const Text(
                            'Evaluación formativa',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                            color: (const Color(0xFFCDBE78)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: const Text(
                              'Semana 4',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AS4FP3P()))),
                        CupertinoButton(
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFFPP3().url4);
                          },
                          child: const Text(
                            'Evaluación formativa',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                            color: (const Color(0xFFCDBE78)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: const Text(
                              'Semana 5',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AS5FP3P()))),
                        CupertinoButton(
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFFPP3().url5);
                          },
                          child: const Text(
                            'Evaluación formativa',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                            color: (const Color(0xFFCDBE78)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: const Text(
                              'Semana 6',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AS6FP3P()))),
                        CupertinoButton(
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFFPP3().url6);
                          },
                          child: const Text(
                            'Evaluación formativa',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
