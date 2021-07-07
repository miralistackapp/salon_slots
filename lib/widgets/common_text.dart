import 'package:flutter/material.dart';
import 'package:salon_slots/utils/size_utils.dart';

Widget text({String text,Color color,double fontSize}){
  return Container(
    width: width *0.55 ,
    child: Text(text,textAlign: TextAlign.center,style: TextStyle(
      fontFamily: 'Mont',
      color: color,
      fontSize: fontSize
    ),),
  );
}