import 'package:flutter/material.dart';
import 'package:ui_2/screens/components/home_screen.dart';
import 'package:ui_2/utils/themes/appTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final AppTheme appTheme = AppTheme();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme.primaryTheme,
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
