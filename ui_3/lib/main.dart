import 'package:flutter/material.dart';
import 'package:ui_3/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.pink, canvasColor: Colors.white),
      home: GlassHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
