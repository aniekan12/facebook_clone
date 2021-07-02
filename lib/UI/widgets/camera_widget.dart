import 'package:facebook_clone/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CameraSnap extends StatelessWidget {
  const CameraSnap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 350),
      child: InkWell(
        child: Icon(
          CupertinoIcons.camera_fill,
          color: grey,
          size: 40,
        ),
      ),
    );
  }
}
