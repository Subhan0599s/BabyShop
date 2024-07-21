import 'package:book_onlineapp/screens/home.dart';
import 'package:book_onlineapp/constants/colors.dart';
import 'package:book_onlineapp/constants/txt_string.dart';
import 'package:book_onlineapp/theme/txt_theme.dart';
import 'package:book_onlineapp/authentication/login.dart';
import 'package:book_onlineapp/authentication/googleauth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final email = TextEditingController();
  final password = TextEditingController();
  final cpassword = TextEditingController();

  void signingoogle() async
  {
    final GoogleSignIn _googleSignIn =GoogleSignIn();
    try
    {
      final GoogleSignInAccount? googleUser =await _googleSignIn.signIn();
      if(googleUser != null)
      {
        final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,

        );

        await FirebaseAuth.instance.signInWithCredential(credential);
        ShowErrorMessage("login with google");
      }

    }
    on FirebaseAuthException catch (e)
    {
      print(e.code);
    }

  }


  void Signin() async {
    try {
      if (password.text == cpassword.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: email.text, password: password.text);
      } else {
        ShowErrorMessage("Password doesn't match");
      }
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      ShowErrorMessage(e.code);
    }
  }

  void ShowErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              message,
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
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
                    Text(TxtString.signupTitle,style: App_txt_theme.lightTxtTheme.headlineLarge,textAlign: TextAlign.left,),
                  ],
                ),
              ),
              Container(
                width: 370.0,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "User Name",
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
                height: 15,
              ),


              Container(
                width: 370.0,
                child: TextField(
                  controller: email,
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
                height: 15,
              ),
              Container(
                width: 370.0,
                child: TextField(
                  controller: password,
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
                height: 15,
              ),
              Container(
                width: 370.0,
                child: TextField(
                  controller: cpassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
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
                  onPressed:(){
                    Signin();
                    Navigator.push(context,
                        MaterialPageRoute
                          (builder: (context)=>home()));
                  },
                  child: Text(
                    "Sign Up",
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      child: Center(
                        child: Text(TxtString.gfaTitle,style: App_txt_theme.lightTxtTheme.titleMedium,),
                      ),
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // google button
                        ElevatedButton(
                          onPressed: () {
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
                              borderRadius: BorderRadius.circular(40),
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
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 110,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(
                             "Already have an account? ",
                             style: App_txt_theme.lightTxtTheme.titleMedium,textAlign: TextAlign.center,
                           ),
                           TextButton(
                             onPressed: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                               Text("Registered");
                             },
                             child: Text(
                               "Login here!",
                               style: TextStyle(fontSize: 16, color: Colors.pinkAccent,fontWeight: FontWeight.bold),
                             ),
                             style: TextButton.styleFrom(
                               backgroundColor: Colors.transparent,
                               foregroundColor: Colors.white,
                             ),
                           ),
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
