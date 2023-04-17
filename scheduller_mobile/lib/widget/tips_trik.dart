import 'package:flutter/material.dart';

import '../models/model_tips_trik.dart';
import '../views/menu/detail_tips_view.dart';

class TipsTriks extends StatelessWidget {
  const TipsTriks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailTipsview(
                image.elementAt(index),
              ),
            ),
          );
        },
        child: Image.asset(
          image[index].image,
          height: 350,
        ),
      ),
      itemCount: image.length,
      separatorBuilder: (context, index) => const SizedBox(
        width: 15,
      ),
    );
  }
}
