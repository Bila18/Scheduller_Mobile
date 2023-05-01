import 'package:flutter/material.dart';
import 'package:scheduller_mobile/utils/color_pallete.dart';
import 'package:scheduller_mobile/utils/typography.dart';

final List<Widget> onBoarding = [
  Column(
    children: [
      const SizedBox(
        height: 70,
      ),
      SizedBox(
        height: 220,
        width: double.infinity,
        child: Image.asset(
          'assets/on_boarding/bomag.png',
          fit: BoxFit.contain,
        ),
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
        'Select Work Guide',
        style: TypographyRoboto.boldHeading3,
      ),
      const SizedBox(
        height: 56,
      ),
      Text(
        'Find complete informations about warranty and claims that you can find here.',
        textAlign: TextAlign.center,
        style: TypographyRoboto.regularLarge,
      ),
    ],
  ),
  Column(
    children: [
      const SizedBox(
        height: 20,
      ),
      Container(
        margin: const EdgeInsets.all(10),
        height: 260,
        width: double.infinity,
        child: Image.asset(
          'assets/on_boarding/scania.png',
          height: 240,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
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
        'Read Anywhere',
        style: TypographyRoboto.boldHeading3,
      ),
      const SizedBox(
        height: 56,
      ),
      Text(
        'All the informations needed by the Scheduler can be accessed anywhere.',
        textAlign: TextAlign.center,
        style: TypographyRoboto.regularLarge,
      ),
    ],
  ),
  Column(
    children: [
      const SizedBox(
        height: 65,
      ),
      SizedBox(
        height: 220,
        width: double.infinity,
        child: Image.asset(
          'assets/on_boarding/komatsu.jpeg',
          fit: BoxFit.contain,
        ),
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
        'Learn Anything',
        style: TypographyRoboto.boldHeading3,
      ),
      const SizedBox(
        height: 60,
      ),
      Text(
        'By using this application, you can learn about warranty and claims by accessing informations easily.',
        textAlign: TextAlign.center,
        style: TypographyRoboto.regularLarge,
      ),
    ],
  ),
];
