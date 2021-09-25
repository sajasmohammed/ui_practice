import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/constants.dart';
import 'package:ui_practice/widgets.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 12,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaulPadding/2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: defaulPadding / 2,
              ),
              Text(
                "All information will be visible to your walk with me contacts",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: defaulPadding / 4,
              ),
              cWidget.textFields(fieldname: 'Name'),
              cWidget.textFields(fieldname: 'Email'),
              cWidget.textFields(fieldname: 'Phone'),
              cWidget.textFields(fieldname: 'Age'),
              cWidget.textFields(fieldname: 'Languge'),
              cWidget.textFields(fieldname: 'Employee'),
              cWidget.textFields(fieldname: 'Hobbie'),
              cWidget.textFields(fieldname: 'Interests'),
            ],
          ),
        ),
      ),
    );
  }
}
