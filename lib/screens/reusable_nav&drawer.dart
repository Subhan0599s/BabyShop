import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:book_onlineapp/constants/colors.dart';
import 'package:book_onlineapp/constants/image_string.dart';
import 'package:flutter/painting.dart';

appbar() {
  return  AppBar(
    primary: false,
      title: Image.asset(App_Images.lightApplogo,width: 120,),
      backgroundColor: App_colors.Accents,
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu_outlined),padding: EdgeInsets.only(left: 15.0),iconSize: 30,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
      actions: [
        Padding(
            padding:EdgeInsets.only(right: 20.0),
          child: Icon(Icons.account_circle_rounded,size: 30.0,),
        )
      ],
      centerTitle: true,
      elevation: 0,
  );
  }

  nav(){
  return BottomAppBar(
    shape: CircularNotchedRectangle(),
    color: App_colors.Primery2,
    padding: EdgeInsets.only(top: 25.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 15,),
        Column(
          children: [
            Icon(Icons.home_filled , size: 24,),
            Text("Home"),
          ],
        ),
        SizedBox(width: 15,),
        Column(
            children: [
              Icon(Icons.favorite , size: 24,),
              Text("Wishlist"),
            ],
          ),
        SizedBox(width: 20,),
        SizedBox(width: 15,),
        Column(
          children: [
            Icon(Icons.wallet_outlined , size: 24,),
            Text("Wallat"),
          ],
        ),
        SizedBox(width: 10,),
        Column(
          children: [
            Icon(Icons.chat_rounded , size: 24,),
            Text("Chat"),
          ],
        ),
        SizedBox(width: 10,),
      ],
    ),
  );
  }

  drawer() {
  return Drawer(
    child: ListView(
      children: [
        // DrawerHeader(
        //   padding: EdgeInsets.only(top: 20),
        //     child: Container(
        //   color: Colors.blue,
        // )),
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color:  Colors.blue,
          ),
          accountName: Text("Riaz Ahmed"),
          accountEmail: Text("riazahmeditu@gmail.com"),
          currentAccountPicture: CircleAvatar(foregroundImage: AssetImage("assets/dp.webp"),),

        ),


        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
        ListTile(
          leading: Icon(Icons.shop),
          title: Text("Shop"),
        ),
        ListTile(
          leading: Icon(Icons.payment),
          title: Text("Payment"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Business Menu",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        ListTile(
          leading: Icon(Icons.label),
          title: Text("Green"),
        ),
        ListTile(
          leading: Icon(Icons.label),
          title: Text("Red"),
        ),
        ListTile(
          leading: Icon(Icons.label),
          title: Text("Yellow"),
        ),
      ],
    ),
  );
  }
