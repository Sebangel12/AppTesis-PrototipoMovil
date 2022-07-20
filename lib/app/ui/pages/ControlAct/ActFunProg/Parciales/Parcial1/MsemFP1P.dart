import 'package:animate_do/animate_do.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActFunProg/Parciales/Parcial1/S1FP1P.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'S2FP1P.dart';
import 'S3FP1P.dart';
import 'S4FP1P .dart';
import 'S5FP1P.dart';
import 'S6FP1P.dart';

class semanasFPparcial1 extends StatelessWidget {
  const semanasFPparcial1({Key? key}) : super(key: key);
//adminatel.redestel@espe.edu.ec
//#Adminredestel@2022

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF066163),
      appBar: AppBar(
        backgroundColor: const Color(0xFF383838),
        centerTitle: true,
        title: const Text('Fundamentos de programación - P1'),
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
                                builder: (BuildContext context) => S1FP1P()))),
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
                                builder: (BuildContext context) => S2FP1P()))),
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
                                builder: (BuildContext context) => S3FP1P()))),
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
                                builder: (BuildContext context) => S4FP1P()))),
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
                                builder: (BuildContext context) => S5FP1P()))),
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
                                builder: (BuildContext context) => S6FP1P()))),
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
