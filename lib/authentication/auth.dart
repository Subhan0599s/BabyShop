import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:book_onlineapp/authentication/login.dart';
import 'package:book_onlineapp/screens/home.dart';


class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {

          return home();
        } else {

          return login();
        }
      },
    );
  }
}