import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class AboutMeUI extends StatelessWidget {
  static const path = '/about';

  AboutMeUI({Key? key}) : super(key: key);

  final pdfController = PdfController(
    document: PdfDocument.openAsset('assets/pdf/RODRIGO_PORRAS.pdf'),
  );

  @override
  Widget build(BuildContext context) {
    return PdfView(
      controller: pdfController,
    );
  }
}
