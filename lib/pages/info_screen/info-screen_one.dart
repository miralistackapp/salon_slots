import 'package:flutter/material.dart';
import 'package:salon_slots/constants/image_path.dart';
import 'package:salon_slots/constants/string_constants.dart';
import 'package:salon_slots/utils/size_utils.dart';
import 'package:salon_slots/widgets/common_info_screens.dart';

class InfoScreenOne extends StatefulWidget {
  const InfoScreenOne({Key key}) : super(key: key);

  @override
  _InfoScreenOneState createState() => _InfoScreenOneState();
}

class _InfoScreenOneState extends State<InfoScreenOne> {
  @override
  Widget build(BuildContext context) {
    size(context);
    return Scaffold(
        body: commonInfoScreens(
            image:discountImage,
            firstText: firstInfoScreenTextOne,
            secondText: firstInfoScreenTextTwo,
            // function: (){
            //   pageIndexNotifier.value = 1;
            //   //return list[1];
            //  // Navigator.push(context, MaterialPageRoute(builder: (context)=>InfoScreenTwo()));
            //  }
        )
    );
  }
}
