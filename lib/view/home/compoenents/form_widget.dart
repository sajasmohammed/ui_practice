import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 12,
      child: Container(
        color: Colors.grey[200],
      ),
    );
  }
}
