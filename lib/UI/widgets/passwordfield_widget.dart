import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final String hintText;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final bool obscure;
  final TextEditingController controller;
  final FormField validator;
  const PasswordField({
    Key key,
    this.hintText,
    this.fontSize,
    this.color,
    this.controller,
    this.fontWeight,
    this.obscure,
    this.validator,
    InputDecoration decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (String value) {
        if (value.isEmpty || value.length < 3) {
          return 'password field cannot be empty';
        } else {
          return null;
        }
      },
      obscureText: obscure,
      style: TextStyle(
        fontSize: 25,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
