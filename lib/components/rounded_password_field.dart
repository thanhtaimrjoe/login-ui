import 'package:flutter/material.dart';
import 'package:login_demo/components/text_field_container.dart';
import 'package:login_demo/constants.dart';

class RoundedPasswordField extends StatelessWidget {

  final String hintText;
  final IconData icon;
  final Color color;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key, this.onChanged, this.hintText, this.icon, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true, //change text to password
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            color: color,
          ),
          suffixIcon: Icon(
            Icons.visibility, 
            color: color,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}