import 'package:flutter/cupertino.dart';
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
        label: title,
        backgroundColor: cblack);
  }

  static textFields(BuildContext context, {required String fieldname}) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaulPadding),
            child: Text(
              "$fieldname :",
              style: TextStyle(fontWeight: FontWeight.bold, color: cblack),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: SizedBox(
            height: 10,
            width: double.infinity,
            child: TextFormField(),
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: TextField(),
                  actions: [
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: Text("Save")),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancel"))
                  ],
                ),
              );
            },
            icon: Icon(
              Icons.edit,
              color: cblue,
            ),
          ),
        ),
      ],
    );
  }
}
