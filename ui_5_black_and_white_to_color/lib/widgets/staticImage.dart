import 'package:flutter/material.dart';

class StaticImage extends StatelessWidget {
  final String staticImage;
  const StaticImage({Key key, this.staticImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final renderBox = context.findRenderObject() as RenderBox;
    final offsetY = renderBox?.localToGlobal(Offset.zero)?.dy ?? 0;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final scrollOffset = offsetY / screenHeight;
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: screenHeight * 0.9,
      width: screenWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment(0, scrollOffset - 0.5),
          image: AssetImage(staticImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
