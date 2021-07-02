import 'dart:io';

import 'package:facebook_clone/utils/failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Future<UserCredential> signUp({
    String email,
    String password,
  }) async {
    try {
      final user = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return user;
    } on FirebaseAuthException {
      throw Failure(
          message: SnackBar(
        content: Text("Firebase couldn't authenticate you!"),
      ));
    } on SocketException {
      throw Failure(
        message: SnackBar(
          content: Text('no internet'),
        ),
      );
    } catch (e) {
      Failure(
          message: SnackBar(
        content: Text(e),
      ));
    }
  }

  Future<UserCredential> signIn({
    String email,
    String password,
  }) async {
    try {
      final user = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return user;
    } on FirebaseAuthException {
      throw Failure(
          message: SnackBar(
        content: Text("Firebase couldn't authenticate you!"),
      ));
    } on SocketException {
      throw Failure(
        message: SnackBar(
          content: Text('no internet'),
        ),
      );
    } catch (e) {
      Failure(
          message: SnackBar(
        content: Text(e),
      ));
    }
  }
}
