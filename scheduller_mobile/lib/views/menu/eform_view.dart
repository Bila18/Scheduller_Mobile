import 'package:flutter/material.dart';
import 'package:scheduller_mobile/utils/color_pallete.dart';
import 'package:scheduller_mobile/utils/typography.dart';

import '../../utils/reusable_widget.dart';

class EFormView extends StatelessWidget {
  const EFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'E- Form',
          style: TypographyRoboto.appBar,
        ),
        backgroundColor: ColorPallete.primary,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Temukan Lebih Banyak!',
              style: TypographyRoboto.mediumHeading1,
            ),
            const SizedBox(
              height: 20,
            ),
            reusableContainer('Delivery'),
            const SizedBox(height: 20),
            reusableContainer('Periodical Service'),
            const SizedBox(height: 20),
            reusableContainer('Technical Sevice Report'),
            const SizedBox(height: 20),
            reusableContainer('Berita Acara Penyerahan'),
          ],
        ),
      )),
    );
  }
}
