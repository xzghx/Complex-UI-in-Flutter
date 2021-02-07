import 'package:flutter/material.dart';

Widget fullImage(Size size, String imageURL) {
  return Container(
    height: size.height * 0.4,
    margin: EdgeInsets.only(left: 8, right: 8),
    width: size.width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(
          image: NetworkImage(
            imageURL,
          ),
          fit: BoxFit.cover,
        )),
  );
}
