import 'package:flutter/material.dart';
import 'package:salon_slots/constants/color_constants.dart';
import 'package:salon_slots/constants/string_constants.dart';
import 'package:salon_slots/utils/size_utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: height * 1,
              width: width * 1,
              color: themeColor,
              child: Center(child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return FractionallySizedBox(
                            heightFactor: 0.5,
                          );
                        });
                  },
                  child: Text(
                    login, style: TextStyle(fontSize: 20, color: white),))),
            ),
          ],
        ),
      ),
    );
  }
}
