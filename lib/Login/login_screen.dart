import 'package:flutter/material.dart';
import 'package:userscreen/Widgets/background.dart';
import 'package:userscreen/Widgets/rounded_input_field.dart';
import 'package:userscreen/Widgets/rounded_password_field.dart';
import 'package:userscreen/main.dart';
import '../constant.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        minHight: 730,
        minCliperHight: 550,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: Text(
                "\nLOGIN",
                style: titleFontStyle,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Email / Username",
            ),
            SizedBox(height: size.height * 0.03),
            RoundedPasswordField(),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MyHomePage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Are you new ? ",
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
                    "Sign Up",
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
