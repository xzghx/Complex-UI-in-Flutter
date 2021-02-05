import 'package:flutter/material.dart';
import 'package:ui_4_whatsapp_parellax/utils/image_repo.dart';
import 'package:ui_4_whatsapp_parellax/widgets/imageByString.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Parrelax Grid',
          style: TextStyle(
              color: Theme.of(context).canvasColor,
              fontWeight: FontWeight.w400),
        ),
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
      ),
      body: ListView.builder(
        controller: _controller,
        physics: BouncingScrollPhysics(),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: _controller,
            builder: (context, child) => ImageByString(
              imageURL: images[index],
            ),
          );
        },
      ),
    );
  }
}
