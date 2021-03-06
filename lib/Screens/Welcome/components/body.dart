import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_demo/Screens/Login/login_screen.dart';
import 'package:login_demo/Screens/SignUp/signup_screen.dart';
import 'package:login_demo/Screens/Welcome/components/background.dart';
import 'package:login_demo/components/rounded_button.dart';
import 'package:login_demo/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "CON ĐỈ LỘC",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "ログイン",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
              color: kPrimaryColor,
              textColor: Colors.white,
            ),
            RoundedButton(
              text: "登録",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
              color: kPrimaryLightColor,
            )
          ]),
    ));
  }
}
