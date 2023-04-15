import 'package:flutter/material.dart';
import 'package:internet_file/internet_file.dart';
import 'package:pdfx/pdfx.dart';
import 'package:scheduller_mobile/utils/color_pallete.dart';
import 'package:scheduller_mobile/utils/typography.dart';

class PdfView extends StatefulWidget {
  final String url;
  final String fileName;
  const PdfView(this.url, this.fileName, {super.key});

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  static const int _initialPage = 1;

  late PdfControllerPinch _pdfControllerPinch;

  @override
  void initState() {
    _pdfControllerPinch = PdfControllerPinch(
      document: PdfDocument.openData(
        InternetFile.get(
          widget.url,
        ),
      ),
      initialPage: _initialPage,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfControllerPinch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPallete.primary,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
        ),
        title: Text(
          widget.fileName,
          style: TypographyRoboto.appBar,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              _pdfControllerPinch.previousPage(
                duration: const Duration(milliseconds: 100),
                curve: Curves.ease,
              );
            },
            icon: const Icon(
              Icons.navigate_before,
              size: 30,
              color: Colors.black,
            ),
          ),
          PdfPageNumber(
            controller: _pdfControllerPinch,
            builder: (_, loadingState, page, pagesCount) => Container(
              alignment: Alignment.center,
              child: Text(
                '$page/${pagesCount ?? 0}',
                style: TypographyRoboto.appBar,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              _pdfControllerPinch.nextPage(
                duration: const Duration(milliseconds: 100),
                curve: Curves.ease,
              );
            },
            icon: const Icon(
              Icons.navigate_next,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: PdfViewPinch(
        scrollDirection: Axis.vertical,
        controller: _pdfControllerPinch,
        builders: PdfViewPinchBuilders<DefaultBuilderOptions>(
          options: const DefaultBuilderOptions(),
          documentLoaderBuilder: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          pageLoaderBuilder: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          errorBuilder: (_, error) => Center(
            child: Text(
              error.toString(),
            ),
          ),
        ),
      ),
    );
  }
}
