import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ui_practice/view/phone_screen/photo_screen.dart';

import '../../../constants.dart';

class ProfileWidget extends StatefulWidget {
  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  File? image;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Container(
        width: double.infinity,
        color: Colors.lightBlue[100],
        child: Padding(
          padding: EdgeInsets.all(defaulPadding / 10),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.menu),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.message_rounded),
                              Icon(Icons.notification_important),
                              Icon(Icons.notifications_active_outlined),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: defaulPadding),
                      InkWell(
                        onTap: () async {
                          final img = await _picker.pickImage(source: ImageSource.camera);
                          setState(() {
                            image = File(img!.path);
                          });
                        },
                        child: Container(
                          height: defaulPadding * 5,
                          width: defaulPadding * 5,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Positioned(
                                left: 10,
                                bottom: 10,
                                top: 10,
                                right: 10,
                                child: CircleAvatar(
                                  radius: defaulPadding * 2,
                                  backgroundColor: cwhite,
                                  child: ClipOval(
                                    child: (image != null)
                                        ? Image.file(image!, height: 512, width: 512, fit: BoxFit.fill,)
                                        : Image.asset('images/user.png'),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PhotoScreen()));
                                  },
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: cblack,
                                    child: Icon(Icons.camera_enhance),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
