import 'package:flutter/material.dart';
import 'package:salon_slots/utils/size_utils.dart';

Widget textOne({String text, Color color, double fontSize}) {
  return Container(
    width: width * 0.58,
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(fontFamily: 'Mont', color: color, fontSize: fontSize),
    ),
  );
}
Widget textTwo({String text, Color color, double fontSize}) {
  return Container(
    width: width * 0.62,
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(fontFamily: 'Mont', color: color, fontSize: fontSize),
    ),
  );
}
Widget commonText({String text, Color color, double fontSize}) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: fontSize),
  );
}
