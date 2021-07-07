import 'package:flutter/material.dart';
import 'package:salon_slots/constants/color_constants.dart';
import 'package:salon_slots/utils/size_utils.dart';

Widget commonRaiseButton({String text, Function function}) {
  // ignore: deprecated_member_use
  return RaisedButton(
    onPressed: () {
      function();
    },
    padding: EdgeInsets.symmetric(
        horizontal: width * 0.35, vertical: height * 0.025),
    shape: commonButtonBorder(),
    color: themeColor,
    child: Text(
      text,
      style: TextStyle(color: white),
    ),
  );
}


Widget commonTextButton({String text,Function function}){
  return  TextButton(
      onPressed: () {function();},
      child: Text(
        text,
        style: TextStyle(color: black),
      ));
}
commonButtonBorder() {
  return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),);
}