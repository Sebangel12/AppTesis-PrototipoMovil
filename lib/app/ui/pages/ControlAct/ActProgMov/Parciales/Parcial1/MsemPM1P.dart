import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'S1PM1P.dart';
import 'S2PM1P.dart';
import 'S3PM1P.dart';
import 'S4PM1P .dart';
import 'S5PM1P.dart';
import 'S6PM1P.dart';

class semanasPMparcial1 extends StatelessWidget {
  const semanasPMparcial1({Key? key}) : super(key: key);
//adminatel.redestel@espe.edu.ec
//#Adminredestel@2022

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF066163),
      appBar: AppBar(
        backgroundColor: const Color(0xFF383838),
        centerTitle: true,
        title: const Text('Aplicaciones Móviles - P1'),
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
                                builder: (BuildContext context) => S1PM1P()))),
                    const SizedBox(
                      height: 20,
                    ),
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
                                builder: (BuildContext context) => S2PM1P()))),
                    const SizedBox(
                      height: 20,
                    ),
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
                                builder: (BuildContext context) => S3PM1P()))),
                    const SizedBox(
                      height: 20,
                    ),
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
                                builder: (BuildContext context) => S4PM1P()))),
                    const SizedBox(
                      height: 20,
                    ),
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
                                builder: (BuildContext context) => S5PM1P()))),
                    const SizedBox(
                      height: 20,
                    ),
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
                                builder: (BuildContext context) => S6PM1P()))),
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
