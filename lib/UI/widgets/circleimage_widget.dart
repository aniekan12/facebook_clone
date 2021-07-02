import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String link;
  const CircleImage({Key key, this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar();
  }
}
