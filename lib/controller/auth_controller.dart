import 'dart:ffi';

import 'package:chat_app/controller/firebase_const.dart';
import 'package:chat_app/screen/homescreen/home/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var usernameController = TextEditingController();
  var emailAddressController = TextEditingController();
  var passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signupEmailandpassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = _auth.currentUser;
      if (user != null) {
        DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
            .collection('users')
            .doc(user.uid)
            .get();
      }
      return credential.user;
    } catch (e) {
      print("error occured");
    }
    return null;
  }

  Future<User?> signinWithEmailandpassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("error occured");
    }
    return null;
  }
}
