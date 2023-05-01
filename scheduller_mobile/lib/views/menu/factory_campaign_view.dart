import 'package:flutter/material.dart';
import 'package:scheduller_mobile/utils/color_pallete.dart';
import 'package:scheduller_mobile/utils/typography.dart';

import '../../utils/reusable_widget.dart';

class FactoryCampaignView extends StatelessWidget {
  final List listUrl;
  final List listName;
  const FactoryCampaignView(this.listUrl, this.listName, {super.key});

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
          'FC & DC',
          style: TypographyRoboto.appBar,
        ),
        backgroundColor: ColorPallete.primary,
      ),
      body: listUrl.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: listUrl.length,
                itemBuilder: (context, index) {
                  return CardFile(
                    listUrl.elementAt(index),
                    listName.elementAt(index),
                  );
                },
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/error.png',
                  ),
                  Text(
                    'Sorry, something worng or file not available!',
                    textAlign: TextAlign.center,
                    style: TypographyRoboto.boldHeading3,
                  ),
                ],
              ),
            ),
    );
  }
}
