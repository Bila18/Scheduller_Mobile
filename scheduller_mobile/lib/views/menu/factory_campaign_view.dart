import 'package:flutter/material.dart';
import 'package:scheduller_mobile/utils/color_pallete.dart';
import 'package:scheduller_mobile/utils/typography.dart';

class FactoryCampaignView extends StatelessWidget {
  const FactoryCampaignView({super.key});

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
          'Factory Campaign',
          style: TypographyRoboto.appBar,
        ),
        backgroundColor: ColorPallete.primary,
      ),
    );
  }
}
