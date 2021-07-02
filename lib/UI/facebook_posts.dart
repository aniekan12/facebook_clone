import 'package:facebook_clone/UI/widgets/button_widget.dart';
import 'package:facebook_clone/UI/widgets/circleimage_widget.dart';
import 'package:facebook_clone/UI/widgets/text_widget.dart';
import 'package:facebook_clone/UI/widgets/textbox_widget.dart';
import 'package:facebook_clone/utils/colors.dart';
import 'package:flutter/material.dart';

class FaceBookPosts extends StatefulWidget {
  const FaceBookPosts({Key key}) : super(key: key);

  @override
  _FaceBookPostsState createState() => _FaceBookPostsState();
}

class _FaceBookPostsState extends State<FaceBookPosts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: 'Facebook',
                      color: lightBlue,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                    // SizedBox(
                    //   width: MediaQuery.of(context).size.width / 4,
                    //),
                    ClassyButton(
                      text: 'Clone Mode',
                      color: darkBlue,
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                Row(
                  children: [
                    CircleImage(),
                    Expanded(child: Container(child: TextBox())),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
