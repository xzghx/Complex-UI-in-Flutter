import 'package:flutter/material.dart';

Widget subImage(String image, Size size) {
  return Container(
    height: size.height * 0.35,
    margin: EdgeInsets.only(top: 8, bottom: 8, left: 8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      image: DecorationImage(
        image: NetworkImage(image),
        fit: BoxFit.cover,
      ),
    ),
  );
}
