import 'package:flutter/material.dart';

class ClassyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  const ClassyButton({
    Key key,
    this.text,
    this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 20,
      width: MediaQuery.of(context).size.width / 3,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
