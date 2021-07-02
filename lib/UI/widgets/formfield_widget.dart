import 'package:flutter/material.dart';

class FacebookFormField extends StatelessWidget {
  final String hintText;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final bool obscure;
  final TextEditingController controller;
  final FormField validator;
  const FacebookFormField({
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

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validateEmail,
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
