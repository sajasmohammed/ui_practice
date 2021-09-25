import 'package:flutter/material.dart';
import 'package:ui_practice/constants.dart';

class cWidget {
  static BottomNavigationBarItem bottomNavigationBarItem(
      {required IconData icon, Color? color, String? title}) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: color,
      ),
      label:title,
      backgroundColor: cblack
    );
  }
}
