import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Parcial1/S1BD1P.dart';
import 'Parcial1/S2BD1P.dart';
import 'Parcial1/S3BD1P.dart';
import 'Parcial1/S4BD1P.dart';
import 'Parcial1/S5BD1P.dart';
import 'Parcial1/S6BD1P.dart';
import 'Parcial2/S1BD2P.dart';
import 'Parcial2/S2BD2P.dart';
import 'Parcial2/S3BD2P.dart';
import 'Parcial2/S4BD2P.dart';
import 'Parcial2/S5BD2P.dart';
import 'Parcial2/S6BD2P.dart';
import 'Parcial3/S1BD3P.dart';
import 'Parcial3/S2BD3P.dart';
import 'Parcial3/S3BD3P.dart';
import 'Parcial3/S4BD3P.dart';
import 'Parcial3/S5BD3P.dart';
import 'Parcial3/S6BD3P.dart';

class MenParBD extends StatefulWidget {
  @override
  State<MenParBD> createState() => _MenParBDState();
}

class _MenParBDState extends State<MenParBD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF066163),
      appBar: AppBar(
        backgroundColor: const Color(0xFF383838),
        centerTitle: true,
        title: const Text('Bases de Datos'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            CupertinoButton(
                padding: EdgeInsets.symmetric(horizontal: 120),
                color: (const Color(0xFFCDBE78)),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Text('Primer Parcial'),
                onPressed: () => showModalBottomSheet(
                      backgroundColor: const Color(0xFF383838),
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      )),
                      context: context,
                      builder: (context) => buildshett1(),
                    )),
            const SizedBox(height: 20),
            CupertinoButton(
                padding: EdgeInsets.symmetric(horizontal: 110),
                color: (const Color(0xFFCDBE78)),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Text('Segundo Parcial'),
                onPressed: () => showModalBottomSheet(
                      backgroundColor: const Color(0xFF383838),
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      )),
                      context: context,
                      builder: (context) => buildshett2(),
                    )),
            const SizedBox(height: 20),
            CupertinoButton(
                padding: EdgeInsets.symmetric(horizontal: 120),
                color: (const Color(0xFFCDBE78)),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Text('Tercer Parcial'),
                onPressed: () => showModalBottomSheet(
                      backgroundColor: const Color(0xFF383838),
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      )),
                      context: context,
                      builder: (context) => buildshett3(),
                    )),
          ],
        ),
      ),
    );
  }

  Widget buildshett1() => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 50,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 1',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S1BD1P()))),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 2',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S2BD1P()))),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 3',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S3BD1P()))),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 4',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S4BD1P()))),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 5',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S5BD1P()))),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 6',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S6BD1P()))),
          const SizedBox(height: 20),
        ],
      );
  Widget buildshett2() => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 50,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 1',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S1BD2P()))),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 2',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S2BD2P()))),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 3',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S3BD2P()))),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 4',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S4BD2P()))),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 5',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S5BD2P()))),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 6',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S6BD2P()))),
          const SizedBox(height: 20),
        ],
      );
  Widget buildshett3() => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 50,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 1',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S1BD3P()))),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 2',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S2BD3P()))),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 3',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S3BD3P()))),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 4',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S4BD3P()))),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 5',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S5BD3P()))),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: (const Color(0xFFCDBE78)),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 6',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => S6BD3P()))),
          const SizedBox(height: 20),
        ],
      );
}
