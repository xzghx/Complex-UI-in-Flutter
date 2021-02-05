import 'package:flutter/material.dart';
import 'package:ui_5_black_and_white_to_color/widgets/staticImage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        controller: _controller,
        itemCount: 2,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              String image = "color$index.jpg";
              return StaticImage(
                staticImage: image,
              );
            },
          );
        },
      ),
    );
  }
}
