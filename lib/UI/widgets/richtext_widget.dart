import 'dart:ui';

import 'package:facebook_clone/utils/colors.dart';
import 'package:flutter/material.dart';

class TermsAndAgreement extends StatelessWidget {
  const TermsAndAgreement({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'By registering on our app, you agree to the ',
        style: TextStyle(
          fontSize: 15,
          color: grey,
        ),
        children: <TextSpan>[
          TextSpan(
              text: 'Terms and Conditions ',
              style: TextStyle(
                color: lightBlue,
              )),
          TextSpan(
              text: 'of facebook.',
              style: TextStyle(
                color: grey,
              )),
        ],
      ),
    );
  }
}
