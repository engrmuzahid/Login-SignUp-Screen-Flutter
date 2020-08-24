import 'package:flutter/material.dart';
import 'package:userscreen/Widgets/text_field_container.dart';

import '../constant.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon, // = Icons.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        cursorColor: primaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon != null ? icon : Icons.person,
            color: primaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
