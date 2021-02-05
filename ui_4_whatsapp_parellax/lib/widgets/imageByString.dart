import 'package:flutter/material.dart';

class ImageByString extends StatelessWidget {
  final String imageURL;
  const ImageByString({
    Key key,
    this.imageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // For getting info about the area where this widget is being rendered
    final renderBox = context.findRenderObject() as RenderBox;
    // For getting "How many pixels, our current widget is located from the top of screen"
    final offsetY = renderBox?.localToGlobal(Offset.zero)?.dy ?? 0;
    // For getting height of whole screen
    final deviceHeight = MediaQuery.of(context).size.height;
    // For getting relatve position, or position of each widget on screen
    final relPosition = offsetY / deviceHeight;
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 10, left: 12, right: 12),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
          // Real Pay starts here
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment(0, relPosition - 0.5),
            image: NetworkImage(imageURL),
          )),
    );
  }
}
