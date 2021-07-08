import 'package:flutter/material.dart';
import 'package:salon_slots/constants/color_constants.dart';

Widget commonRaiseButton(
    {String text, double width, double height, Function function}) {
  // ignore: deprecated_member_use
  return RaisedButton(
    onPressed: () {
      function();
    },
    padding: EdgeInsets.symmetric(horizontal: width, vertical: height),
    shape: commonButtonBorder(),
    color: themeColor,
    child: Text(
      text,
      style: TextStyle(color: white, fontWeight: FontWeight.bold),
    ),
  );
}

Widget commonTextButton({String text, Function function}) {
  return TextButton(
      onPressed: () {
        function();
      },
      child: Text(
        text,
        style: TextStyle(color: black),
      ));
}

Widget commonSignInWithButton({String image, Function function}) {
  // ignore: deprecated_member_use
  return RaisedButton(
    onPressed: () {
      function();
    },
    padding: EdgeInsets.symmetric(vertical: 10),
    shape: CircleBorder(),
    color: white,
    child: Image.asset(
      image,
      height: 25,
    ),
  );
}

commonButtonBorder() {
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25),
  );
}

commonDecoration() {
  return BoxDecoration(
      color: white,
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(25), topLeft: Radius.circular(25)));
}
