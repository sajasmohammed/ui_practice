import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_practice/constants.dart';
import 'package:ui_practice/controller/controller.dart';
import 'compoenents/bottom_nav_bar_widget.dart';
import 'compoenents/form_widget.dart';
import 'compoenents/profile_widget.dart';

class HomeScreen extends StatelessWidget {
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ProfileWidget(),
            Expanded(
              flex: 1,
              child: Container(
                  width: double.infinity,
                  color: cblack,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaulPadding / 2),
                    child: Text(
                      "Edit Profile",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: cwhite, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            FormWidget(),
          ],
        ),
      ),
      bottomNavigationBar: bottom_nav_bar_widget(controller: _controller),
    );
  }
}
