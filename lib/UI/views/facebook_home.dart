import 'package:flutter/material.dart';

class FaceBookHome extends StatefulWidget {
  const FaceBookHome({Key key}) : super(key: key);

  @override
  _FaceBookHomeState createState() => _FaceBookHomeState();
}

class _FaceBookHomeState extends State<FaceBookHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('hey! welcome')),
    );
  }
}
