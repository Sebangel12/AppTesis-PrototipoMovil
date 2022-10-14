import 'dart:io';
import 'package:atel_redes_telecom_prot/app/ui/globalwidgets/pdfapi.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import '../../../../../globalwidgets/PDFView.dart';
import '../../../../../globalwidgets/pdfviewpage.dart';

class AS1BD2P extends StatefulWidget {
  @override
  State<AS1BD2P> createState() => _AS1BD2PState();
}

class _AS1BD2PState extends State<AS1BD2P> {
  String dir = '/Bases de datos/Segundo parcial/Semana 1';
  late Future<ListResult> futureFiles;

  @override
  void initState() {
    super.initState();
    futureFiles = FirebaseStorage.instance.ref(dir).listAll();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFF388E3C),
          centerTitle: true,
          title: const Text('Base de datos P2 - S1'),
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
                    leading: IconButton(
                      color: Colors.black,
                      icon: const Icon(Icons.download),
                      onPressed: () => downloadFiles(file),
                    ),
                    title: Text(
                      textWidthBasis: TextWidthBasis.parent,
                      file.name,
                    ),
                    trailing: IconButton(
                      color: Colors.black,
                      icon: const Icon(Icons.open_in_new),
                      onPressed: () async {
                        final path = dir;
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
  Future downloadFiles(Reference ref) async {
    final url = await ref.getDownloadURL();
    final name = ref.name;
    // ignore: use_build_context_synchronously
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => PDFView(
                  url: url,
                  name: name,
                )));
  }
}
