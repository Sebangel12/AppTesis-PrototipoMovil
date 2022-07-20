import 'package:atel_redes_telecom_prot/app/data/FirebaseFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFView extends StatelessWidget {
  final FirebaseFile file;
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  PDFView({Key? key, required this.file}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(file.name),
        centerTitle: true,
      ),
      body: SfPdfViewer.network(
          'gs://prototipoaplicaciontesis.appspot.com/Bases de datos/Primer parcial/Semana 1/bases_para_concurso_de_fotografía_del_ejército_2022.pdf'),
    );
  }
}
