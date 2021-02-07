import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/staggeredImage.dart';
import '../widgets/wideImage.dart';

class BottomAppearerScreen extends StatefulWidget {
  @override
  _BottomAppearerScreenState createState() => _BottomAppearerScreenState();
}

class _BottomAppearerScreenState extends State<BottomAppearerScreen> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: size.height,
          width: size.width,
          margin:
              EdgeInsets.only(left: size.width * 0.1, right: size.width * 0.1),
          child: ListView.builder(
            controller: controller,
            itemCount: Constants.imageList.length,
            itemBuilder: (context, index) {
              return AnimatedImageWrapper(
                controller: controller,
                size: size,
                index: index,
              );
            },
          )),
    );
  }
}

class AnimatedImageWrapper extends StatelessWidget {
  final int index;
  const AnimatedImageWrapper({
    Key key,
    this.index,
    @required this.controller,
    @required this.size,
  }) : super(key: key);

  final ScrollController controller;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final renderBox = context.findRenderObject() as RenderBox;
        final offsetY = renderBox?.localToGlobal(Offset.zero)?.dy ?? 0;
        if (offsetY <= 0) {
          return getImage();
        } else {
          final deviceHeight = size.height;
          final areaVisible = deviceHeight - offsetY;
          final widgetHeight = renderBox.size.height;
          final howMuchShown = (areaVisible / widgetHeight).clamp(0.0, 1.0);
          final scale = 0.8 +
              howMuchShown * 0.2; // scale should start from 0.8 and goto 1
          final opacity = 0.25 +
              howMuchShown * 0.75; // opactity should start from 0.25 and goto 1
          return Transform.scale(
            scale: scale,
            child: Opacity(
              opacity: opacity,
              child: getImage(),
            ),
          );
        }
      },
    );
  }

  Widget getImage() {
    if (index % 2 == 0) {
      return fullImage(size, Constants.imageList[index]);
    } else {
      return longImage(Constants.imageList[index], size);
    }
  }
}
