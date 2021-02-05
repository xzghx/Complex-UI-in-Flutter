import 'package:flutter/material.dart';
import 'package:ui_5_black_and_white_to_color/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color to B&W',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.purpleAccent,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
