import 'package:flutter/material.dart';

import '../../../constants.dart';


class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        width: double.infinity,
        color: Colors.lightBlue[100],
        child: Padding(
          padding: EdgeInsets.all(defaulPadding / 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(defaulPadding),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.menu),
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.message_rounded),
                                Icon(Icons.notification_important),
                                Icon(Icons
                                    .notifications_active_outlined),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: defaulPadding),
                      Expanded(
                        flex: 2,
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
                                  radius: defaulPadding*2,
                                  backgroundColor: cwhite,
                                  child: Icon(
                                    Icons.person,
                                    size: defaulPadding * 3,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundColor: cblack,
                                  child: Icon(Icons.camera_enhance),
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
