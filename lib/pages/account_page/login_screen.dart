import 'package:flutter/material.dart';
import 'package:salon_slots/constants/color_constants.dart';
import 'package:salon_slots/constants/image_path.dart';
import 'package:salon_slots/constants/string_constants.dart';
import 'package:salon_slots/pages/account_page/sign_up_page.dart';
import 'package:salon_slots/pages/home_page.dart';
import 'package:salon_slots/utils/size_utils.dart';
import 'package:salon_slots/utils/validation.dart';
import 'package:salon_slots/widgets/common-logIn_row.dart';
import 'package:salon_slots/widgets/common_buttons.dart';
import 'package:salon_slots/widgets/common_sizedBox.dart';
import 'package:salon_slots/widgets/common_text.dart';
import 'package:salon_slots/widgets/common_textFormFiled.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Stack(children: [
            Container(
              height: height * 1,
              width: width * 1,
              color: themeColor,
              child: Padding(
                padding: EdgeInsets.only(top: height * 0.03),
                child: Column(
                  children: [
                    Image.asset(loginImage),
                    commonText(text: login, color: white, fontSize: 20)
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: height * 0,
              child: Container(
                height: height * 0.7,
                width: width,
                decoration: commonDecoration(),
                child: Padding(
                  padding: EdgeInsets.all(height * 0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      commonTextFormFiled(
                        // height: 0,
                        // width: 8,
                        labelText: email,
                        obSecureText: false,
                        controller: emailController,
                        validator: (val) => validateEmail(val, context),
                      ),
                      commonTextFormFiled(
                        // height: 0,
                        // width: 8,
                        obSecureText: true,
                        labelText: passWord,
                        controller: passwordController,
                        validator: (val) => validatePassword(val, context),
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: commonTextButton(
                              text: forgetPassword, function: () {})),
                      commonRaiseButton(
                          text: loginIn,
                          height: height * 0.023,
                          width: width * 0.3,
                          function: () {
                            if (_formKey.currentState.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            }
                          }),
                      commonText(text: signInWith, fontSize: 10, color: black),
                      Wrap(
                        spacing: -25,
                        children: [
                          commonSignInWithButton(
                              image: googleImage, function: () {}),
                          commonSignInWithButton(
                              image: faceBookImage, function: () {}),
                        ],
                      ),
                      commonAccountRow(
                          text: doNotHaveAccount,
                          buttonText: signUp,
                          function: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpScreen()));
                          }),
                      sizedBox(height: height * 0.02)
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
