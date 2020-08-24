import 'package:flutter/material.dart';
import 'Login/login_screen.dart';
import 'Signup/signup_screen.dart';
import 'Widgets/background.dart';
import 'Widgets/rounded_button.dart';
import 'package:flutter_svg/svg.dart';
import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login-Signup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100),
        height: size.height,
        color: Colors.red[100],
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  "WELCOME TO \nWEB SPECIAL TEAM",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.red),
                  textAlign: TextAlign.center,
                ),
                //   SizedBox(height: 0),
                SvgPicture.asset(
                  "assets/icons/chat.svg",
                  height: size.height * 0.45,
                ),
                SizedBox(height: 10),
                RoundedButton(
                  text: "LOGIN",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
                RoundedButton(
                  text: "SIGN UP",
                  color: Colors.green[300],
                  textColor: Colors.white,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );

    // return Scaffold1(
    //   body: new SingleChildScrollView(
    //     child: new Container(
    //       color: primaryColor,
    //       child: new Column(
    //         mainAxisAlignment: MainAxisAlignment.center,

    //       ),
    //     ),
    //   ),
    // );
  }
}
