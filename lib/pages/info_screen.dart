import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:salon_slots/constants/color_constants.dart';
import 'package:salon_slots/pages/info_screen/info-screen_one.dart';
import 'package:salon_slots/pages/info_screen/info_screen_three.dart';
import 'package:salon_slots/pages/info_screen/info_screen_two.dart';

final pageIndexNotifier = ValueNotifier<int>(0);

// ignore: must_be_immutable
class InfoScreen extends StatelessWidget {
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
        alignment: FractionalOffset.bottomCenter,
        children: <Widget>[
          PageView.builder(
            onPageChanged: (index) => pageIndexNotifier.value = index,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return list[index];
            },
          ),
          _buildExample()
        ],
      ),
    );
  }

  PageViewIndicator _buildExample() {
    return PageViewIndicator(
      pageIndexNotifier: pageIndexNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.black87,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(size: 12.0, color: themeColor),
      ),
    );
  }
}
