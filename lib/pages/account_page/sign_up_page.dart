import 'package:flutter/material.dart';
import 'package:salon_slots/constants/color_constants.dart';
import 'package:salon_slots/constants/string_constants.dart';
import 'package:salon_slots/pages/home_page.dart';
import 'package:salon_slots/utils/size_utils.dart';
import 'package:salon_slots/utils/validation.dart';
import 'package:salon_slots/widgets/common_buttons.dart';
import 'package:salon_slots/widgets/common_sizedBox.dart';
import 'package:salon_slots/widgets/common_text.dart';
import 'package:salon_slots/widgets/common_textFormFiled.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
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
                padding: EdgeInsets.only(top: height * 0.1, left: width * 0.4),
                child: commonText(text: signUp, color: white, fontSize: 20),
              ),
            ),
            Positioned(
              bottom: height * 0,
              child: Container(
                height: height * 0.85,
                width: width * 1,
                decoration: commonDecoration(),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(height * 0.02),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        commonTextFormFiled(
                          labelText: name,
                          obSecureText: false,
                          controller: nameController,
                          validator: (val) => validateName(val, context),
                        ),
                        commonTextFormFiled(
                          labelText: email,
                          obSecureText: false,
                          controller: emailController,
                          validator: (val) => validateEmail(val, context),
                        ),
                        commonTextFormFiled(
                          labelText: phoneNumber,
                          obSecureText: false,
                          controller: phoneNumberController,
                          validator: (val) => validatePhone(val, context),
                        ),
                        commonTextFormFiled(
                          labelText: zipCode,
                          obSecureText: false,
                          controller: zipCodeController,
                          validator: (val) => validateZipCode(val, context),
                        ),
                        commonTextFormFiled(
                          obSecureText: true,
                          labelText: passWord,
                          controller: passwordController,
                          validator: (val) => validatePassword(val, context),
                        ),
                        commonTextFormFiled(
                          obSecureText: true,
                          labelText: confirmPassWord,
                          controller: confirmPasswordController,
                          validator: (val) => validateConfirmPassword(val, context,passwordController),
                        ),
                        sizedBox(height: 20),
                        commonRaiseButton(
                            text: createAccount,
                            height: height * 0.023,
                            width: width * 0.25,
                            function: () {
                              if (_formKey.currentState.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              }
                            })
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
