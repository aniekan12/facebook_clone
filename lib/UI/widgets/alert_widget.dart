import 'package:flutter/material.dart';

class Alerts extends StatelessWidget {
  const Alerts({Key key}) : super(key: key);

  @override
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Facebook"),
      content: Text("New Post Made!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return showAlertDialog(context);
  }
}
