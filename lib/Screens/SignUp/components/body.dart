import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_demo/Screens/SignUp/components/background.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SIGN UP", 
            style: TextStyle(fontWeight: FontWeight.bold)
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.35),
          RoundedInputField(
            hintText: "あなたのメール",
            icon: Icons.person,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            hintText: "パスワード",
            color: kPrimaryColor,
            icon: Icons.lock,
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "サインイン",
            press: () {},
            textColor: Colors.white,
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}

