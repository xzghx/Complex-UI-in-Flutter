import 'package:flutter/cupertino.dart';
import 'package:ui_6_bottom_appearer/widgets/subImage.dart';

Widget longImage(String imageURL, Size size) {
  return Container(
    child: Row(
      children: [
        Expanded(
          child: subImage(imageURL, size),
        ),
        Expanded(
          child: subImage(imageURL, size),
        ),
        Expanded(
          child: subImage(imageURL, size),
        )
      ],
    ),
  );
}
