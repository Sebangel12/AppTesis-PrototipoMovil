import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PDFView extends StatefulWidget {
  final String url;
  final String name;
  const PDFView({super.key, required this.url, required this.name});

  @override
  State<PDFView> createState() => _PDFViewState();
}

class _PDFViewState extends State<PDFView> {
  @override
  Widget build(BuildContext context) {
    final dir = widget.url;
    final name = widget.name;
    //print(dir);
    return Scaffold(
      backgroundColor: const Color(0xFF066163),
      appBar: AppBar(
        backgroundColor: const Color(0xFF383838),
        title: const Text('Habra el documento PDF'),
        centerTitle: true,
      ),
      body: CupertinoButton(
        child: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
        onPressed: () {
          // ignore: deprecated_member_use
          launch(widget.url);
        },
      ),
    );
  }
}
