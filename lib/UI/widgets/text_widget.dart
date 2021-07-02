import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;

  final double fontSize;
  final FontWeight fontWeight;

  const TextWidget({
    Key key,
    this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
