import 'package:dino_app/screens/mainscreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:dino_app/functions/systemscreen.dart';

class WelcomScreen extends StatefulWidget {
  @override
  _WelcomScreenState createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, navigateToDeviceScreen);
  }

  navigateToDeviceScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MainScreen()));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double deviceWidth = SizeConfig.blockSizeHorizontal;
    double deviceHeight = SizeConfig.blockSizeVertical;
    return Container(
      height: deviceHeight * 100,
      width: deviceWidth * 100,
      decoration: BoxDecoration(
          gradient:
              RadialGradient(colors: [Colors.amber[50], Colors.amber[300]])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: "Dyno App!",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: deviceHeight * 5,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
