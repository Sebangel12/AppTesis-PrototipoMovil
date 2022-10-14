import 'dart:io';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import '../../../../../globalwidgets/PDFView.dart';
import '../../../../../globalwidgets/pdfapi.dart';
import '../../../../../globalwidgets/pdfviewpage.dart';
import 'package:flutter/cupertino.dart';

class S1BD3P extends StatefulWidget {
  @override
  State<S1BD3P> createState() => _S1BD3PState();
}

class _S1BD3PState extends State<S1BD3P> {
  late bool _isactive = false;
  PlatformFile? pickedFile;
  UploadTask? uploadTask;
  final _textController = TextEditingController();
  String FileofDelete = '';
  String dir = '/Bases de datos/Tercer parcial/Semana 1';
  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result == null) return;
    setState(() {
      pickedFile = result.files.first;
    });
  }

  Future uploadFile() async {
    final path =
        "$dir/${pickedFile!.name}"; // ubicacion de almacenar el archivo
    final file = File(pickedFile!.path!);

    final ref = FirebaseStorage.instance.ref().child(path);
    setState(() {
      uploadTask = ref.putFile(file);
    });
    final snapshot = await uploadTask!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    print("Download link: $urlDownload");

    setState(() {
      uploadTask = null;
    });
  }

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
          title: const Text('Bases de datos P3 - S1'),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    child: FutureBuilder<ListResult>(
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
                                      final archv =
                                          await PDFApi.loadFirebase(url, path);
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
                        }),
                  ),
                  const SizedBox(height: 32),
                  if (pickedFile != null)
                    Center(
                        child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 100),
                      color: const Color(0xFF388E3C),
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      child: Center(
                          child: Text(
                        pickedFile!.name,
                        textWidthBasis: TextWidthBasis.parent,
                      )),
                    )),
                  const SizedBox(height: 32),
                  CupertinoButton(
                      color: Colors.black,
                      onPressed: selectFile,
                      child: const Text("Seleccionar archivo")),
                  const SizedBox(height: 32),
                  CupertinoButton(
                      color: Colors.black,
                      onPressed: uploadFile,
                      child: const Text("Subir archivo")),
                  const SizedBox(height: 20),
                  progressdeupload(),
                  const SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(right: 20, left: 20),
                    color: Colors.white,
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        hintText:
                            'Ingrese el nombre del documento con su extension',
                        suffix: Checkbox(
                          onChanged: (bool? valueIn) {
                            setState(() {
                              _isactive = valueIn!;
                              FileofDelete = _textController.text;
                            });
                          },
                          value: _isactive,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    child: CupertinoButton(
                        color: Colors.black,
                        child: Text('Borrar el documento'),
                        onPressed: () => DeleteFiles()),
                  ),
                  const SizedBox(height: 20),
                ],
              )
            ],
          ),
        ),
      );

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDfViewPage(archv: file)),
      );

  void DeleteFiles() async {
    final filedelet = FirebaseStorage.instance.ref(dir).child(FileofDelete);
    //print('$filedelet .lol');
    await filedelet.delete();
  }

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

  Widget progressdeupload() => StreamBuilder<TaskSnapshot>(
        stream: uploadTask?.snapshotEvents,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;
            double progress = data.bytesTransferred / data.totalBytes;
            return SizedBox(
              height: 50,
              width: 200,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey,
                    color: const Color(0xFF388E3C),
                  ),
                  Center(
                    child: Text(
                      "${(100 * progress).roundToDouble()}%",
                    ),
                  )
                ],
              ),
            );
          } else {
            return const SizedBox(
              height: 50,
            );
          }
        },
      );
}
