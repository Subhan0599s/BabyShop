import 'package:flutter/material.dart';

class App_outlineButton {
  App_outlineButton._();

  static final lightOutlineButton = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        minimumSize: const Size(88, 36),
        disabledBackgroundColor: Colors.grey,
        disabledForegroundColor: Colors.grey,
        side: const BorderSide(color: Colors.pinkAccent),
        padding: const EdgeInsets.symmetric(vertical: 18),
        textStyle: const TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
    ),
  );


  static final darkOutlineButton = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.black,
        minimumSize: const Size(88, 36),
        disabledBackgroundColor: Colors.grey,
        disabledForegroundColor: Colors.grey,
        side: const BorderSide(color: Colors.pinkAccent),
        padding: const EdgeInsets.symmetric(vertical: 18),
        textStyle: const TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
    ),
  );

}
