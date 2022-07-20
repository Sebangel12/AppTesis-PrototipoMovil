import 'dart:io';

import 'package:atel_redes_telecom_prot/app/ui/globalwidgets/pdfapi.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../../globalwidgets/pdfviewpage.dart';

class AS1BD1P extends StatefulWidget {
  @override
  State<AS1BD1P> createState() => _AS1BD1PState();
}

class _AS1BD1PState extends State<AS1BD1P> {
  late Future<ListResult> futureFiles;

  @override
  void initState() {
    super.initState();
    futureFiles = FirebaseStorage.instance
        .ref("Base de datos/Primer parcial/Semana 1")
        .listAll();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xFF066163),
        appBar: AppBar(
          backgroundColor: const Color(0xFF383838),
          centerTitle: true,
          title: const Text('Base de datos P1 - S1'),
        ),
        body: FutureBuilder<ListResult>(
          future: futureFiles,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final files = snapshot.data!.items;
              return ListView.builder(
                itemCount: files.length,
                itemBuilder: (context, index) {
                  final file = files[index];
                  return ListTile(
                    leading: Text(
                      file.name,
                      style: const TextStyle(color: Colors.white),
                    ),
                    title: IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.computer),
                      onPressed: () {},
                    ),
                    trailing: IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.phone_android),
                      onPressed: () async {
                        const path = "Base de datos/Primer parcial/Semana 1";
                        final url = file.name;
                        final archv = await PDFApi.loadFirebase(url, path);
                        if (archv == null) return;
                        openPDF(context, archv);
                      },
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text("Ah ocurrido un error"),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      );

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDfViewPage(archv: file)),
      );
}
