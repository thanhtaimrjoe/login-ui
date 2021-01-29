import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_demo/components/rounded_button.dart';
import 'package:login_demo/components/rounded_input_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.8,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Text(
              "SIGN UP PAGE",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SvgPicture.asset("assets/images/signup_top.png",
              width: size.width * 0.35),
          RoundedInputField(
            hintText: "Username",
            icon: Icons.person,
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}
