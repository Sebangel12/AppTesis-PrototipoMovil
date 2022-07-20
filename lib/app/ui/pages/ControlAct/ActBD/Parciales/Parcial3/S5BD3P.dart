import 'dart:io';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class S5BD3P extends StatefulWidget {
  @override
  State<S5BD3P> createState() => _S5BD3PState();
}

class _S5BD3PState extends State<S5BD3P> {
  PlatformFile? pickedFile;
  UploadTask? uploadTask;

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result == null) return;
    setState(() {
      pickedFile = result.files.first;
    });
  }

  Future uploadFile() async {
    final path =
        "Bases de datos/Tercer parcial/Semana 5/${pickedFile!.name}"; // ubicacion de almacenar el archivo
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

  double progress = 0.0;
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xFF066163),
        appBar: AppBar(
          backgroundColor: const Color(0xFF383838),
          centerTitle: true,
          title: const Text('Bases de Datos P3 - S5'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.transparent,
                height: 100,
                width: 100,
                child: LiquidCircularProgressIndicator(
                  value: progress,
                  valueColor: const AlwaysStoppedAnimation(Color(0xFFCDBE78)),
                  backgroundColor: Colors.transparent,
                  direction: Axis.vertical,
                  center: Text(
                    "$progress%",
                    style: GoogleFonts.poppins(
                        color: Colors.black87, fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              ElevatedButton(
                onPressed: () async {
                  FilePickerResult? result =
                      await FilePicker.platform.pickFiles();

                  if (result != null) {
                    Uint8List? file = result.files.first.bytes;
                    String fileName = result.files.first.name;

                    UploadTask task = FirebaseStorage.instance
                        .ref()
                        .child(
                            "Bases de datos/Tercer parcial/Semana 5/$fileName")
                        .putData(file!);

                    task.snapshotEvents.listen((event) {
                      setState(() {
                        progress = ((event.bytesTransferred.toDouble() /
                                event.totalBytes.toDouble() *
                                100)
                            .roundToDouble());
                        print(progress);
                      });
                    });
                  }
                },
                child: const Text("Subir archivo desde el aplicativo web"),
              ),
              const SizedBox(
                height: 32,
              ),
              if (pickedFile != null)
                Center(
                    child: Container(
                  color: const Color(0xFFCDBE78),
                  padding: const EdgeInsets.only(right: 30, left: 30),
                  child: Center(child: Text(pickedFile!.name)),
                )),
              const SizedBox(
                height: 32,
              ),
              ElevatedButton(
                  onPressed: selectFile,
                  child: const Text(
                      "Seleccionar archivo desde el aplicativo móvil")),
              const SizedBox(
                height: 32,
              ),
              ElevatedButton(
                  onPressed: uploadFile,
                  child: const Text("Subir archivo desde el aplicativo móvil")),
              progressdeupload(),
            ],
          ),
        ),
      );

  Widget progressdeupload() => StreamBuilder<TaskSnapshot>(
        stream: uploadTask?.snapshotEvents,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;
            double progress = data.bytesTransferred / data.totalBytes;
            return SizedBox(
              height: 50,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey,
                    color: Colors.green,
                  ),
                  Center(
                    child: Text(
                      "${(100 * progress).roundToDouble()}%",
                      style: const TextStyle(color: Colors.white),
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
