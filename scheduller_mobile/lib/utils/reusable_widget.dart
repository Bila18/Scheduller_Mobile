import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scheduller_mobile/utils/color_pallete.dart';
import 'package:scheduller_mobile/utils/typography.dart';

import '../views/pdf_view.dart';

void popUpExit(BuildContext context, String img, String title) async {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            img,
            height: 250,
            width: 250,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TypographyRoboto.regularHeading3,
          )
        ]),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 25),
                    backgroundColor: Colors.white,
                    side: BorderSide(
                      color: ColorPallete.primary,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Tidak', style: TypographyRoboto.skip),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 25),
                    backgroundColor: ColorPallete.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    FirebaseAuth.instance.signOut().then((value) {
                      Navigator.pushNamed(context, "/login");
                    });
                  },
                  child: Text('Ya', style: TypographyRoboto.next),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}

Widget reusableContainer(String title) {
  return Container(
    padding: const EdgeInsets.all(8),
    width: double.infinity,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: ColorPallete.box,
    ),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style: TypographyRoboto.mediumHeading4,
      ),
      const Icon(
        Icons.arrow_forward_ios_outlined,
        color: Colors.black,
      ),
    ]),
  );
}

class CardFile extends StatelessWidget {
  final String url;
  final String fileName;
  const CardFile(
    this.url,
    this.fileName, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorPallete.box,
        ),
        child: ListTile(
          visualDensity: const VisualDensity(vertical: 1),
          title: Text(fileName),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PdfView(url, fileName),
              ),
            );
          },
        ),
      ),
    );
  }
}
