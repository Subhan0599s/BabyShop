import 'package:book_onlineapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import'package:flutter/material.dart';
import 'package:book_onlineapp/App.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform);
  runApp(my_app());
}