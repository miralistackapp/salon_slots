import 'package:flutter/material.dart';
import 'package:salon_slots/constants/color_constants.dart';

Widget commonTextFormFiled(
    {String labelText,
    TextEditingController controller,
    Function validator,
    // double width,
    // double height,
    bool obSecureText}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
    child: TextFormField(
        style: TextStyle(color: black),
        controller: controller,
        obscureText: obSecureText,
        decoration: InputDecoration(
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: black)),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: themeColor),
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: black,
          ),
        ),
        validator: validator),
  );
}

commonSearchBorderRadius() {
  return BorderRadius.circular(5);
}
