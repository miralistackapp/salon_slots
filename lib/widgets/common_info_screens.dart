import 'package:flutter/cupertino.dart';
import 'package:salon_slots/constants/color_constants.dart';
import 'package:salon_slots/utils/size_utils.dart';
import 'package:salon_slots/widgets/common_buttons.dart';
import 'package:salon_slots/widgets/common_sizedBox.dart';
import 'package:salon_slots/widgets/common_text.dart';

Widget commonInfoScreens(
    {String image,
    String firstText,
    String secondText,
    String firstButtonText,
    String secondButtonText,
    Function function
    }) {
  return Center(
    child: Column(
      children: [
        sizedBox(height: height * 0.15),
        Image.asset(
          image,
          height: height * 0.3,
        ),
        sizedBox(height: height * 0.05),
        text(text: firstText, color: black, fontSize: 15),
        sizedBox(height: height * 0.02),
        text(text: secondText, color: themeColor, fontSize: 13),
        sizedBox(height: height * 0.15),
        commonRaiseButton(text: firstButtonText,function: (){function();}),
        sizedBox(height: height * 0.015),
        commonTextButton(text: secondButtonText)
      ],
    ),
  );
}
