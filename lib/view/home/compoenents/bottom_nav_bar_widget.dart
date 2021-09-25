import 'package:flutter/material.dart';
import 'package:ui_practice/controller/controller.dart';
import 'package:ui_practice/widgets.dart';

import '../../../constants.dart';


class bottom_nav_bar_widget extends StatelessWidget {
  const bottom_nav_bar_widget({
    Key? key,
    required Controller controller,
  }) : _controller = controller, super(key: key);

  final Controller _controller;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _controller.currentIndex.value,
      backgroundColor: cblack,
      items: [
        cWidget.bottomNavigationBarItem(
            icon: Icons.home, color: cwhite, title: ''),
        cWidget.bottomNavigationBarItem(
            icon: Icons.explore, color: cblue, title: ''),
        cWidget.bottomNavigationBarItem(
            icon: Icons.directions_walk, color: cred, title: ''),
      ],
      onTap: (i) {
        _controller.currentIndex.value = i;
      },
    );
  }
}
