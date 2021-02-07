import 'package:flutter/material.dart';
import 'package:ui_6_bottom_appearer/screens/bottom_appearer_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Appearer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomAppearerScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
