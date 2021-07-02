import 'package:facebook_clone/utils/colors.dart';
import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final TextEditingController controller;
  const TextBox({
    Key key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: 1000,
      style: TextStyle(
        fontSize: 25,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: 'Write Something..',
        hintStyle: TextStyle(
          fontSize: 20,
          color: grey,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
