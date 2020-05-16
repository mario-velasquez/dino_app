import 'package:flutter/material.dart';
import 'package:dino_app/functions/systemscreen.dart';

class MainScreen extends StatefulWidget {
  //MainScreen({Key key, this.title}) : super(key: key);

  //final String title;

  @override
  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double deviceWidth = SizeConfig.blockSizeHorizontal;
    double deviceHeight = SizeConfig.blockSizeVertical;
    return new Container(
      height: deviceHeight * 100,
      width: deviceWidth * 100,
      color: Colors.amberAccent,
    );
  }
}
