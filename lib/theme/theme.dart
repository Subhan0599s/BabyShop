import 'package:flutter/material.dart';
import 'package:book_onlineapp/theme/txt_theme.dart';
import 'package:book_onlineapp/theme/appbar_theme.dart';
import 'package:book_onlineapp/theme/bottomSheetTheme.dart';
import 'package:book_onlineapp/theme/chipTheme.dart';
import 'package:book_onlineapp/theme/checkboxTheme.dart';
import 'package:book_onlineapp/theme/elevatedButtonTheme.dart';
import 'package:book_onlineapp/theme/inputFeild.dart';
import 'package:book_onlineapp/theme/outlineButtonTheme.dart';

class App_Theme {
  App_Theme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.pinkAccent,
    scaffoldBackgroundColor: Colors.white,
    textTheme: App_txt_theme.lightTxtTheme,
    elevatedButtonTheme: App_Elevatedbuttontheme.lightElevatedButtonTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    appBarTheme: appbarTheme.lightApptheme,
    inputDecorationTheme: AppInputFeild.lightInputFeild,
    checkboxTheme: checkboxTheme.lightCheckboxTheme,
    bottomSheetTheme: App_Bottomsheettheme.lightBottomSheet,
    outlinedButtonTheme: App_outlineButton.lightOutlineButton,

  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.pinkAccent,
    scaffoldBackgroundColor: Colors.black,
    textTheme: App_txt_theme.darkTxtTheme,
    elevatedButtonTheme: App_Elevatedbuttontheme.darkElevatedButtonTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    appBarTheme: appbarTheme.darkApptheme,
    inputDecorationTheme: AppInputFeild.darkInputFeild,
    checkboxTheme: checkboxTheme.darkCheckboxTheme,
    bottomSheetTheme: App_Bottomsheettheme.darkBottomSheet,
    outlinedButtonTheme: App_outlineButton.darkOutlineButton,
  );
}