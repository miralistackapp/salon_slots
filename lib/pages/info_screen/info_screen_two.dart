import 'package:flutter/material.dart';
import 'package:salon_slots/constants/image_path.dart';
import 'package:salon_slots/constants/string_constants.dart';
import 'package:salon_slots/widgets/common_info_screens.dart';

class InfoScreenTwo extends StatefulWidget {
  const InfoScreenTwo({Key key}) : super(key: key);

  @override
  _InfoScreenTwoState createState() => _InfoScreenTwoState();
}

class _InfoScreenTwoState extends State<InfoScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: commonInfoScreens(
            image: salonImage,
            firstText: secondInfoScreenTextOne,
            secondText: secondInfoScreenTextTwo,
            // function: (){
            //   pageIndexNotifier.value = 2;
            // }
        )
    );
  }
}
