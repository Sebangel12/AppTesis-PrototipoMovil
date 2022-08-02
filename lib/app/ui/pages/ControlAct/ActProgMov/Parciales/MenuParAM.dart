import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Parcial1/S1PM1P.dart';
import 'Parcial1/S2PM1P.dart';
import 'Parcial1/S3PM1P.dart';
import 'Parcial1/S4PM1P .dart';
import 'Parcial1/S5PM1P.dart';
import 'Parcial1/S6PM1P.dart';
import 'Parcial2/S1PM2P.dart';
import 'Parcial2/S2PM2P.dart';
import 'Parcial2/S3PM2P.dart';
import 'Parcial2/S4PM2P .dart';
import 'Parcial2/S5PM2P.dart';
import 'Parcial2/S6PM2P.dart';
import 'Parcial3/S1PM3P.dart';
import 'Parcial3/S2PM3P.dart';
import 'Parcial3/S3PM3P.dart';
import 'Parcial3/S4PM3P.dart';
import 'Parcial3/S5PM3P.dart';
import 'Parcial3/S6PM3P.dart';

class MenParPM extends StatefulWidget {
  @override
  State<MenParPM> createState() => _MenParPMState();
}

class _MenParPMState extends State<MenParPM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF066163),
      appBar: AppBar(
        backgroundColor: const Color(0xFF383838),
        centerTitle: true,
        title: const Text('Aplicaciones Móviles'),
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
                      builder: (BuildContext context) => S1PM1P()))),
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
                      builder: (BuildContext context) => S2PM1P()))),
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
                      builder: (BuildContext context) => S3PM1P()))),
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
                      builder: (BuildContext context) => S4PM1P()))),
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
                      builder: (BuildContext context) => S5PM1P()))),
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
                      builder: (BuildContext context) => S6PM1P()))),
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
                      builder: (BuildContext context) => S1PM2P()))),
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
                      builder: (BuildContext context) => S2PM2P()))),
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
                      builder: (BuildContext context) => S3PM2P()))),
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
                      builder: (BuildContext context) => S4PM2P()))),
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
                      builder: (BuildContext context) => S5PM2P()))),
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
                      builder: (BuildContext context) => S6PM2P()))),
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
                      builder: (BuildContext context) => S1PM3P()))),
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
                      builder: (BuildContext context) => S2PM3P()))),
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
                      builder: (BuildContext context) => S3PM3P()))),
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
                      builder: (BuildContext context) => S4PM3P()))),
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
                      builder: (BuildContext context) => S5PM3P()))),
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
                      builder: (BuildContext context) => S6PM3P()))),
          const SizedBox(height: 20),
        ],
      );
}
