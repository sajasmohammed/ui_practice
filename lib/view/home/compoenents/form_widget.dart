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
      flex: 20,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaulPadding / 2),
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
              cWidget.textFields(context,fieldname: 'Name', ),
              cWidget.textFields(context, fieldname: 'Email',),
              cWidget.textFields(context, fieldname: 'Phone',),
              cWidget.textFields(context, fieldname: 'Age',),
              cWidget.textFields(context, fieldname: 'Languge',),
              Divider(
                height: defaulPadding / 2,
                thickness: defaulPadding / 5,
                color: cblack,
              ),
              SizedBox(
                height: defaulPadding / 2,
              ),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    checkColor: cwhite,
                    activeColor: cblack,
                    onChanged: (i) {},
                  ),
                  Text("Exercise"),
                  
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    checkColor: cwhite,
                    activeColor: cblack,
                    onChanged: (i) {},
                  ),
                  Text("Commute"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    checkColor: cwhite,
                    activeColor: cblack,
                    // fillColor: MaterialStateProperty.all(cwhite),
                    onChanged: (i) {},
                  ),
                  Text("Other"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
