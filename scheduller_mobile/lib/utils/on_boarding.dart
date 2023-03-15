import 'package:flutter/material.dart';
import 'package:scheduller_mobile/utils/color_pallete.dart';
import 'package:scheduller_mobile/utils/typography.dart';

final List<Widget> onBoarding = [
  Column(
    children: [
      const SizedBox(
        height: 100,
      ),
      Image.asset(
        'assets/on_boarding/bomag.png',
      ),
      const SizedBox(
        height: 60,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: ColorPallete.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 15,
            width: 40,
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: ColorPallete.primary),
            height: 15,
            width: 15,
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: ColorPallete.primary),
            height: 15,
            width: 15,
          ),
        ],
      ),
      const SizedBox(
        height: 60,
      ),
      Text(
        'Pilih Panduan Kerja',
        style: TypographyRoboto.boldHeading3,
      ),
      const SizedBox(
        height: 46,
      ),
      Text(
        'Temukan informasi mengenai warranty dan claim yang dapat kamu temui secara lengkap disini.',
        textAlign: TextAlign.center,
        style: TypographyRoboto.regularLarge,
      ),
      const SizedBox(
        height: 110,
      ),
    ],
  ),
  Column(
    children: [
      // const SizedBox(
      //   height: 10,
      // ),
      Image.asset(
        'assets/on_boarding/scania.png',
        scale: 2,
      ),
      const SizedBox(
        height: 50,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: ColorPallete.primary),
            height: 15,
            width: 15,
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            decoration: BoxDecoration(
              color: ColorPallete.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 15,
            width: 40,
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: ColorPallete.primary),
            height: 15,
            width: 15,
          ),
        ],
      ),
      const SizedBox(
        height: 60,
      ),
      Text(
        'Baca Dimana Saja',
        style: TypographyRoboto.boldHeading3,
      ),
      const SizedBox(
        height: 46,
      ),
      Text(
        'Sekarang semua informasi yang dibutuhkan scheduler bisa diakses dimana saja',
        textAlign: TextAlign.center,
        style: TypographyRoboto.regularLarge,
      ),
      const SizedBox(
        height: 115,
      ),
    ],
  ),
  Column(
    children: [
      const SizedBox(
        height: 100,
      ),
      Image.asset(
        'assets/on_boarding/komatsu.jpeg',
      ),
      const SizedBox(
        height: 60,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: ColorPallete.primary),
            height: 15,
            width: 15,
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: ColorPallete.primary),
            height: 15,
            width: 15,
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            decoration: BoxDecoration(
              color: ColorPallete.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 15,
            width: 40,
          ),
        ],
      ),
      const SizedBox(
        height: 60,
      ),
      Text(
        'Pelajari Semuanya',
        style: TypographyRoboto.boldHeading3,
      ),
      const SizedBox(
        height: 46,
      ),
      Text(
        'Dengan menggunakan aplikasi ini kamu bisa mengakses informasi mengenai warranty dan claim dengan mudah.',
        textAlign: TextAlign.center,
        style: TypographyRoboto.regularLarge,
      ),
      const SizedBox(
        height: 80,
      ),
    ],
  ),
];
