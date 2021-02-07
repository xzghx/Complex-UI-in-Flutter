import 'package:flutter/material.dart';
import 'screens/bottom_appearer_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Appearer',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: BottomAppearerScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
