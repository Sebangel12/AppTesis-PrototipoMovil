import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Parcial1/S1PV1P.dart';
import 'Parcial1/S2PV1P.dart';
import 'Parcial1/S3PV1P.dart';
import 'Parcial1/S4PV1P .dart';
import 'Parcial1/S5PV1P.dart';
import 'Parcial1/S6PV1P.dart';
import 'Parcial2/S1PV2P.dart';
import 'Parcial2/S2PV2P.dart';
import 'Parcial2/S3PV2P.dart';
import 'Parcial2/S4PV2P.dart';
import 'Parcial2/S5PV2P.dart';
import 'Parcial2/S6PV2P.dart';
import 'Parcial3/S1PV3P.dart';
import 'Parcial3/S2PV3P.dart';
import 'Parcial3/S3PV3P.dart';
import 'Parcial3/S4PV3P.dart';
import 'Parcial3/S5PV3P.dart';
import 'Parcial3/S6PV3P.dart';

class MenParPV extends StatefulWidget {
  @override
  State<MenParPV> createState() => _MenParPVState();
}

class _MenParPVState extends State<MenParPV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF066163),
      appBar: AppBar(
        backgroundColor: const Color(0xFF383838),
        centerTitle: true,
        title: const Text('Programación Visual'),
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
                      builder: (BuildContext context) => S1PV1P()))),
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
                      builder: (BuildContext context) => S2PV1P()))),
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
                      builder: (BuildContext context) => S3PV1P()))),
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
                      builder: (BuildContext context) => S4PV1P()))),
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
                      builder: (BuildContext context) => S5PV1P()))),
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
                      builder: (BuildContext context) => S6PV1P()))),
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
                      builder: (BuildContext context) => S1PV2P()))),
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
                      builder: (BuildContext context) => S2PV2P()))),
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
                      builder: (BuildContext context) => S3PV2P()))),
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
                      builder: (BuildContext context) => S4PV2P()))),
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
                      builder: (BuildContext context) => S5PV2P()))),
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
                      builder: (BuildContext context) => S6PV2P()))),
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
                      builder: (BuildContext context) => S1PV3P()))),
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
                      builder: (BuildContext context) => S2PV3P()))),
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
                      builder: (BuildContext context) => S3PV3P()))),
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
                      builder: (BuildContext context) => S4PV3P()))),
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
                      builder: (BuildContext context) => S5PV3P()))),
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
                      builder: (BuildContext context) => S6PV3P()))),
          const SizedBox(height: 20),
        ],
      );
}
