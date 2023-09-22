import 'package:flutter/material.dart';
import 'package:document_reader/docs.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
// ignore: unused_import
import 'package:document_reader/home.dart';


// ignore: must_be_immutable
class Reader extends StatefulWidget {
   Reader(this.doc ,{ Key? key }) : super(key: key);
  Document doc;
  @override
  _ReaderState createState() => _ReaderState();
}

class _ReaderState extends State<Reader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(

        backgroundColor:  Colors.deepOrangeAccent,

        title: Text(widget.doc.doctitle!),

      ),

      body: Container(

        child: SfPdfViewer.network(widget.doc.docurl!),

      ),
      
    );
  }
}