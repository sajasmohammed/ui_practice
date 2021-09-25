import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_practice/constants.dart';
import 'package:ui_practice/controller/controller.dart';
import 'package:ui_practice/widgets.dart';

class HomeScreen extends StatelessWidget {
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defaulPadding),
          child: Column(
            children: [],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _controller.currentIndex.value,
        backgroundColor: cblack,
        items: [
          cWidget.bottomNavigationBarItem(icon: Icons.home,color: cwhite, title: ''),
          cWidget.bottomNavigationBarItem(
              icon: Icons.explore, color: cblue, title: ''),
          cWidget.bottomNavigationBarItem(
              icon: Icons.directions_walk, color: cred, title: ''),
        ],
        onTap: (i) {
          _controller.currentIndex.value = i;
        },
      ),
    );
  }
}
