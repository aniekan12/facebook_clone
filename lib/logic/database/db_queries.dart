import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:facebook_clone/utils/failure.dart';
import 'package:flutter/material.dart';

class Database {
  CollectionReference _firebaseFirestore =
      FirebaseFirestore.instance.collection('fbposts');

  Future makePosts(String myPost) async {
    try {
      return await _firebaseFirestore
          .add({
            'post': myPost,
          })
          .then((value) => print("User added"))
          .onError((error, stackTrace) => print("failed to add user: $error"));
    } on FirebaseException {
      throw Failure(
          message: SnackBar(
        content: Text("Failed to create post!"),
      ));
    } on SocketException {
      throw Failure(
          message: SnackBar(
        content: Text("Boss, you need internet!"),
      ));
    } catch (e) {
      throw Failure(
        message: SnackBar(
          content: Text(e),
        ),
      );
    }
  }
}
