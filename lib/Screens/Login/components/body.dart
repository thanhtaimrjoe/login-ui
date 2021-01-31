import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_demo/Screens/Login/components/background.dart';
import 'package:login_demo/components/rounded_button.dart';
import 'package:login_demo/components/rounded_input_field.dart';
import 'package:login_demo/components/rounded_password_field.dart';
import 'package:login_demo/constants.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "ログインページ", 
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/login.svg", 
            height: size.height * 0.35
          ),
          RoundedInputField(
            hintText: "あなたのメール",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            hintText: "パスワード",
            color: kPrimaryColor,
            icon: Icons.lock,
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "ログイン",
            press: () {},
            color: kPrimaryColor,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}






