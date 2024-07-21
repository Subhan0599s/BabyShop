import 'dart:async';
import 'package:book_onlineapp/constants/colors.dart';
import 'package:book_onlineapp/constants/txt_string.dart';
import 'package:book_onlineapp/theme/txt_theme.dart';
import 'package:flutter/material.dart';
import 'package:book_onlineapp/authentication/signup.dart';

class splash extends StatefulWidget
{
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 5) ,() {
      Navigator.pushReplacement
        (context, MaterialPageRoute(builder: (context) =>signup() ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_colors.Accents,
      body : SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/logos/light.png"),width: 200,height: 100,),
              Container(
                width: 300,
                child: Text(TxtString.onBoardingSubTitle1,style: App_txt_theme.lightTxtTheme.titleMedium,textAlign: TextAlign.center,),
              )
            ],
          ),
        ),
      ),
    );
  }
}

