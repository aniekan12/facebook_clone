import 'package:facebook_clone/UI/widgets/alert_widget.dart';
import 'package:facebook_clone/UI/widgets/camera_widget.dart';
import 'package:facebook_clone/UI/widgets/circleimage_widget.dart';
import 'package:facebook_clone/UI/widgets/textbox_widget.dart';
import 'package:facebook_clone/logic/database/db_queries.dart';
import 'package:facebook_clone/utils/colors.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:flat_icons_flutter/icon_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UploadPost extends StatefulWidget {
  const UploadPost({Key key}) : super(key: key);

  @override
  _UploadPostState createState() => _UploadPostState();
}

class _UploadPostState extends State<UploadPost> {
  bool complete = false;
  Database db = Database();
  TextEditingController _post = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 23,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 40, 30),
                          child: Center(
                            child: Icon(
                              CupertinoIcons.arrow_clockwise,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: InkWell(
                      onTap: () async {
                        await db.makePosts(_post.text);
                        Alerts();
                        Navigator.pop(context);
                      },
                      child: Icon(
                        CupertinoIcons.paperplane_fill,
                        color: complete ? lightBlue : grey,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: CircleImage(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: TextBox(
                      controller: _post,
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CameraSnap(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
