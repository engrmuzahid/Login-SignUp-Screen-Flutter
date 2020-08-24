import 'package:flutter/material.dart';
import 'package:userscreen/Login/login_screen.dart';
import 'package:userscreen/Widgets/background.dart';
import 'package:userscreen/Widgets/rounded_input_field.dart';
import 'package:userscreen/Widgets/rounded_password_field.dart';

import '../constant.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        minHight: 910,
        minCliperHight: 740,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: Text(
                "\nSIGNUP",
                style: titleFontStyle,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Full Name",
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Email / Username",
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Phone +44 xxxx xxx xxx",
            ),
            SizedBox(height: size.height * 0.03),
            RoundedPasswordField(),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Already have an Account ? ",
                  style: TextStyle(color: primaryColor),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 250, top: 80),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.red,
                    width: 3.0,
                  )),
              child: IconButton(
                icon: Image.asset("assets/icons/loginBtn.png"),
                iconSize: 50,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
