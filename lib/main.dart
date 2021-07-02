import 'package:facebook_clone/UI/facebook_posts.dart';
import 'package:facebook_clone/UI/views/auth_screen.dart';
import 'package:facebook_clone/UI/views/uploadPost.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SourceSansPro',
      ),
      home: AuthScreen(),
    );
  }
}