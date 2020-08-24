import 'package:flutter/material.dart';
import 'package:userscreen/main.dart';

class Background extends StatelessWidget {
  final Widget child;
  final double minHight;
  final double minCliperHight;
  const Background({
    Key key,
    @required this.child,
    this.minHight,
    this.minCliperHight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: Colors.red[100],
      width: double.infinity,
      child: SingleChildScrollView(
        child: Container(
          height: minHight,
          padding: const EdgeInsets.all(20), //
          child: new Stack(
            children: <Widget>[
              ClipPath(
                clipper: LoginCliper(),
                child: Container(
                  height: minCliperHight,
                  margin: const EdgeInsets.only(top: 50),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: child,
                ),
              ),
              Positioned(
                bottom: 130,
                child: Container(
                  //    margin: EdgeInsets.on,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    icon: Image.asset("assets/icons/twitterBtn.png"),
                    iconSize: 75,
                    onPressed: () {},
                  ),
                ),
              ),
              Positioned(
                left: 105,
                bottom: 65,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    icon: Image.asset("assets/icons/instogramBtn.png"),
                    iconSize: 75,
                    onPressed: () {},
                  ),
                ),
              ),
              Positioned(
                left: 210,
                bottom: 15,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    icon: Image.asset("assets/icons/facebookBtn.png"),
                    iconSize: 75,
                    onPressed: () {},
                    color: Colors.red,
                  ),
                ),
              ),
              Positioned(
                top: 45,
                right: 0,
                child: Container(
                  //  margin: EdgeInsets.symmetric(vertical: 15),
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.red,
                      width: 3.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red[100],
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: Icon(Icons.close),
                    color: Colors.red,
                    iconSize: 35,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MyHomePage();
                          },
                        ),
                      );
                    },
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

class LoginCliper extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 1.4);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
