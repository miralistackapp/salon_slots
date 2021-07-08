import 'package:flutter/material.dart';
import 'package:salon_slots/constants/color_constants.dart';
import 'package:salon_slots/constants/image_path.dart';
import 'package:salon_slots/constants/string_constants.dart';
import 'package:salon_slots/pages/info_screen.dart';
import 'package:salon_slots/utils/size_utils.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    size(context);
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: InfoScreen(),
      image: Image.asset(
        splashImage,
      ),
      backgroundColor: white,
      photoSize: height* 0.3,
      useLoader: false,
      title: Text(welcome, style: TextStyle(fontSize: 25, color: themeColor)),
    );
  }
}
