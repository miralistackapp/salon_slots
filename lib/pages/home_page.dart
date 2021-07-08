import 'package:flutter/material.dart';
import 'package:salon_slots/constants/color_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Abc'),
        backgroundColor: themeColor,
      ),
    );
  }
}
