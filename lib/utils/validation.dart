import 'package:flutter/material.dart';
import 'package:salon_slots/constants/string_constants.dart';

String validateEmail(String value, BuildContext context) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value))
    return errorEmail;
  else
    return null;
}

String validatePassword(String value, BuildContext context) {
  if (value.trim().isEmpty) {
    return 'This field is required';
  }
  if (value.trim().length < 8) {
    return 'Password must be at least 8 characters in length';
  }
  return null;
}

String validateConfirmPassword(
    String value, BuildContext context, TextEditingController controller) {
  if (value.isEmpty) {
    return 'This field is required';
  }

  if (value != controller) {
    return 'Confimation password does not match the entered password';
  }

  return null;
}

// String validateName(String value, BuildContext context) {
//   Pattern pattern =
//       RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
//   RegExp regex = RegExp(pattern);
//   if (!regex.hasMatch(value))
//     return errorName;
//   else
//     return null;
// }
String validateName(String value, BuildContext context) {
  if (value.length < 3)
    return errorName;
  else
    return null;
}
String validatePhone(String value, BuildContext context) {
  String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = new RegExp(pattern);
  if (value.length == 0) {
    return errorPhoneNumberOne;
  } else if (!regExp.hasMatch(value)) {
    return errorPhoneNumberTwo;
  }
  return null;
}

String validateZipCode(String value, BuildContext context) {
  if (value.length < 8)
    return errorZipCode;
  else
    return null;
}
