import 'package:flutter/material.dart';
import 'package:scheduller_mobile/utils/color_pallete.dart';
import 'package:scheduller_mobile/utils/reusable_widget.dart';
import 'package:scheduller_mobile/utils/typography.dart';

class StandardWarrantyView extends StatelessWidget {
  const StandardWarrantyView({super.key});

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
          'Standard Warranty',
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
            reusableContainer('Bomag'),
            const SizedBox(height: 20),
            reusableContainer('Komatsu'),
            const SizedBox(height: 20),
            reusableContainer('Scania'),
            const SizedBox(height: 20),
            reusableContainer('Tadano'),
            const SizedBox(height: 20),
            reusableContainer('UD Truck'),
          ],
        ),
      )),
    );
  }
}
