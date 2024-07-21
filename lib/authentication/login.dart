import 'package:book_onlineapp/authentication/signup.dart';
import 'package:book_onlineapp/authentication/forget.dart';
import 'package:book_onlineapp/authentication/googleauth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:book_onlineapp/constants/colors.dart';
import 'package:book_onlineapp/constants/txt_string.dart';
import 'package:book_onlineapp/theme/txt_theme.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:book_onlineapp/screens/home.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() async {
    showDialog(context: context, builder: (context) {
      return Center(
        child: CircularProgressIndicator(),
      );
    });
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      ShowErrorMessage(e.code);
    }
  }

  void ShowErrorMessage(String message) {
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            message,
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App_colors.Accents,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 370,
                height: 260,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(TxtString.loginTitle,style: App_txt_theme.lightTxtTheme.headlineLarge,textAlign: TextAlign.left,),
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
                height: 20,
              ),
              Container(
                width: 380.0,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
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
                height: 10,
              ),
              Container(
                width: 360,
                alignment: Alignment.bottomRight,
                  child :TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => forget()));
                    },
                    child: Text(
                      TxtString.forgetTitle,
                      style: TextStyle(fontSize: 16, color: Colors.pinkAccent,fontWeight: FontWeight.bold),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                    ),
                  ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 370,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    signUserIn();
                    Navigator.push(context,
                        MaterialPageRoute
                          (builder: (context)=>home()));

                  },
                  child: Text(
                    "Sign In",
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
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Center(
                  child: Text(TxtString.gfaTitle,style: App_txt_theme.lightTxtTheme.titleMedium,),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // google button
                    ElevatedButton(
                      onPressed:() {
                        signInWithGoogle();
                      },
                      child: SizedBox(
                        width: 30,
                        height: 70,
                        child: Image.asset("assets/logos/google.png"),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: App_colors.Creamy,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    // apple button
                    ElevatedButton(
                      onPressed: () {},
                      child: SizedBox(
                        width: 30,
                        height: 70,
                        child: Image.asset("assets/logos/facebook.png"),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: App_colors.Creamy,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 220,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create an account? ",
                          style: App_txt_theme.lightTxtTheme.titleMedium,textAlign: TextAlign.center,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => signup()));
                          },
                          child: Text(
                            "Signup here!",
                            style: TextStyle(fontSize: 16, color: Colors.pinkAccent,fontWeight: FontWeight.bold),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
