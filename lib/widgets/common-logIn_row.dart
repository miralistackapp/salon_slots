import 'package:flutter/material.dart';
import 'package:salon_slots/constants/color_constants.dart';
import 'package:salon_slots/widgets/common_sizedBox.dart';

Widget commonAccountRow({String text,String buttonText,Function function}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(text,
        style: TextStyle(
          color: grey,
        ),
      ),
      sizedBox(width: 5),
      InkWell(
          onTap: () {function();},
          child: Text(
            buttonText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: themeColor,
            ),
          ))
    ],
  );
}