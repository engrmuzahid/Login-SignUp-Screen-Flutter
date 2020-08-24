import 'package:flutter/material.dart';
import 'package:userscreen/Widgets/text_field_container.dart';

import '../constant.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: primaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: primaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
