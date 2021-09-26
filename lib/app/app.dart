import 'package:flutter/material.dart';
import 'package:ui_practice/view/home/home_screen.dart';
import 'package:ui_practice/view/phone_screen/photo_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}