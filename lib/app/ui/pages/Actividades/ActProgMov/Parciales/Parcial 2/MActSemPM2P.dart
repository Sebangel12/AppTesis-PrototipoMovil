import 'package:animate_do/animate_do.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/Actividades/ActBD/Parciales/Parcial%201/AS1BD1P.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../data/urlsAM.dart';
import 'AS1PM2P.dart';
import 'AS2PM2P.dart';
import 'AS3PM2P.dart';
import 'AS4PM2P.dart';
import 'AS5PM2P.dart';
import 'AS6PM2P.dart';

class MActsemAMparcial2 extends StatelessWidget {
  const MActsemAMparcial2({Key? key}) : super(key: key);
//adminatel.redestel@espe.edu.ec
//#Adminredestel@2022

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF066163),
      appBar: AppBar(
        backgroundColor: const Color(0xFF383838),
        centerTitle: true,
        title: const Text('Aplicaciónes Móviles - P2'),
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
                                        AS1PM2P()))),
                        CupertinoButton(
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFAMP2().url1);
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
                                        AS2PM2P()))),
                        CupertinoButton(
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFAMP2().url2);
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
                                        AS3PM2P()))),
                        CupertinoButton(
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFAMP2().url3);
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
                                        AS4PM2P()))),
                        CupertinoButton(
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFAMP2().url4);
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
                                        AS5PM2P()))),
                        CupertinoButton(
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFAMP2().url5);
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
                                        AS6PM2P()))),
                        CupertinoButton(
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFAMP2().url6);
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
