import 'package:flutter/material.dart';
import 'package:salon_slots/constants/image_path.dart';
import 'package:salon_slots/constants/string_constants.dart';
import 'package:salon_slots/widgets/common_info_screens.dart';

class InfoScreenThree extends StatefulWidget {
  const InfoScreenThree({Key key}) : super(key: key);

  @override
  _InfoScreenThreeState createState() => _InfoScreenThreeState();
}

class _InfoScreenThreeState extends State<InfoScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: commonInfoScreens(
      image: mobileImage,
      firstText: thirdInfoScreenTextOne,
      secondText: thirdInfoScreenTextTwo,
      // function: (){
      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
      // }
    ));
  }
}
