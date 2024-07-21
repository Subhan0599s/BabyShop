
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:book_onlineapp/constants/colors.dart';
import 'package:book_onlineapp/constants/txt_string.dart';
import 'package:book_onlineapp/theme/txt_theme.dart';
import 'package:book_onlineapp/authentication/login.dart';

class forget extends StatefulWidget {
  const forget({super.key});

  @override
  State<forget> createState() => _forgetState();
}

class _forgetState extends State<forget> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_colors.Accents,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 370,
                  height: 260,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(TxtString.forgetTitle,style: App_txt_theme.lightTxtTheme.headlineLarge,textAlign: TextAlign.left,),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1,
                ),

                Container(
                  width: 370.0,
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email Address",
                      filled: true,
                      fillColor: App_colors.Creamy,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.transparent)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: App_colors.Accents)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 370,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute
                            (builder: (context)=>login()));

                    },
                    child: Text(
                      "Forget Password",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.pinkAccent,
                        side: const BorderSide(color: Colors.pinkAccent),
                        textStyle: const TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w600),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                    ),
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
