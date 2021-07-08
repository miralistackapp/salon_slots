import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:salon_slots/constants/color_constants.dart';
import 'package:salon_slots/constants/string_constants.dart';
import 'package:salon_slots/pages/info_screen/info-screen_one.dart';
import 'package:salon_slots/pages/info_screen/info_screen_three.dart';
import 'package:salon_slots/pages/info_screen/info_screen_two.dart';
import 'package:salon_slots/pages/account_page/login_screen.dart';
import 'package:salon_slots/utils/size_utils.dart';
import 'package:salon_slots/widgets/common_buttons.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key key}) : super(key: key);

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  final pageIndexNotifier = ValueNotifier<int>(0);
  static const length = 3;

  List<Widget> list = <Widget>[
    InfoScreenOne(),
    InfoScreenTwo(),
    InfoScreenThree()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            onPageChanged: (index) => pageIndexNotifier.value = index,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return list[index];
            },
          ),
          Positioned(
              bottom: height * 0.22,
              left: width * 0.42,
              child: _buildExample()),
          Positioned(
            bottom: height * 0.12,
            left: width * 0.15,
            child: commonRaiseButton(
                height: height*0.023,
                width: width * 0.3,
                text: next,
                function: () {
                  //pageIndexNotifier.value = 1;
                  //  return null;
                }),
          ),
          Positioned(
            bottom: height * 0.04,
            left: width * 0.42,
            child: commonTextButton(
                text: skip,
                function: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                }),
          ),
        ],
      ),
    );
  }

  PageViewIndicator _buildExample() {
    return PageViewIndicator(
      pageIndexNotifier: pageIndexNotifier,
      length: length,
      normalBuilder: (animationController, index) => Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: white,
            border: Border.all(color: black, width: 1)),
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 10.0,
          color: black,
        ),
      ),
    );
  }
}
