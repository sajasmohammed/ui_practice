import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/constants.dart';

class PhotoScreen extends StatelessWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: cblue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.close),
                      color: cwhite,
                    ),
                    Row(
                      children: [
                        Text(
                          "All photos",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: cwhite,
                              fontSize: defaulPadding),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_downward_rounded),
                          color: cwhite,
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.done),
                      color: cwhite,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.blue[100],
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(color: cblack, child: Text("I don't know which type of grid view use for this", style: TextStyle(fontSize: defaulPadding, color: cwhite),)),
            ),
          ],
        ),
      ),
    );
  }
}
