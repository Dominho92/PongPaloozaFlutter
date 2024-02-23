import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthServices {
  FirebaseAuth auth = FirebaseAuth.instance;

  registerUserInFirebase(email, password, context) async {
    try {
      await auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Registered Successfully')));
      });
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}
