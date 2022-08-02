import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Parcial1/S1FP1P.dart';
import 'Parcial1/S2FP1P.dart';
import 'Parcial1/S3FP1P.dart';
import 'Parcial1/S4FP1P.dart';
import 'Parcial1/S5FP1P.dart';
import 'Parcial1/S6FP1P.dart';
import 'Parcial2/S1FP2P.dart';
import 'Parcial2/S2FP2P.dart';
import 'Parcial2/S3FP2P.dart';
import 'Parcial2/S4FP2P.dart';
import 'Parcial2/S5FP2P.dart';
import 'Parcial2/S6FP2P.dart';
import 'Parcial3/S1FP3P.dart';
import 'Parcial3/S2FP3P.dart';
import 'Parcial3/S3FP3P.dart';
import 'Parcial3/S4FP3P.dart';
import 'Parcial3/S5FP3P.dart';
import 'Parcial3/S6FP3P.dart';

class MenParFP extends StatefulWidget {
  @override
  State<MenParFP> createState() => _MenParFPState();
}

class _MenParFPState extends State<MenParFP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF066163),
      appBar: AppBar(
        backgroundColor: const Color(0xFF383838),
        centerTitle: true,
        title: const Text('Fundamentos de programación'),
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
                      builder: (BuildContext context) => S1FP1P()))),
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
                      builder: (BuildContext context) => S2FP1P()))),
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
                      builder: (BuildContext context) => S3FP1P()))),
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
                      builder: (BuildContext context) => S4FP1P()))),
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
                      builder: (BuildContext context) => S5FP1P()))),
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
                      builder: (BuildContext context) => S6FP1P()))),
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
                      builder: (BuildContext context) => S1FP2P()))),
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
                      builder: (BuildContext context) => S2FP2P()))),
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
                      builder: (BuildContext context) => S3FP2P()))),
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
                      builder: (BuildContext context) => S4FP2P()))),
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
                      builder: (BuildContext context) => S5FP2P()))),
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
                      builder: (BuildContext context) => S6FP2P()))),
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
                      builder: (BuildContext context) => S1FP3P()))),
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
                      builder: (BuildContext context) => S2FP3P()))),
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
                      builder: (BuildContext context) => S3FP3P()))),
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
                      builder: (BuildContext context) => S4FP3P()))),
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
                      builder: (BuildContext context) => S5FP3P()))),
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
                      builder: (BuildContext context) => S6FP3P()))),
          const SizedBox(height: 20),
        ],
      );
}
