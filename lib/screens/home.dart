import 'package:book_onlineapp/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:book_onlineapp/screens/reusable_nav&drawer.dart';
import 'package:book_onlineapp/constants/txt_string.dart';
import 'package:book_onlineapp/constants/image_string.dart';
import 'package:book_onlineapp/theme/txt_theme.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: App_colors.Accents,
        appBar: appbar(),
        drawer: drawer(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.shopping_cart,color: App_colors.Dark,),
            elevation: 0,
            backgroundColor: App_colors.Primery2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        bottomNavigationBar: nav(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 250,
                child: Column(
                  children: [
                    Container(
                      width: 360,
                      child: Text('Our',style: TextStyle(fontSize: 52.0, color: Colors.black,fontFamily: 'Poppins')),
                    ),
                    Container(
                      width: 360,
                      child: Text(TxtString.featureTitle,style: TextStyle(fontSize: 52.0, color: Colors.black,fontFamily: 'Poppins')),
                    ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          width: 360,
                          height: 60,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search Product",
                              filled: true,
                              prefixIcon: Icon(Icons.search_outlined),
                              suffixIcon: Icon(Icons.filter_list_outlined),
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
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
              height: 120,
                // color: Colors.blue,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red
                            ),
                          ),
                          Text('Calog1',style: App_txt_theme.lightTxtTheme.titleMedium,),
                        ],
                      )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red
                              ),
                            ),
                            Text('Calog2',style: App_txt_theme.lightTxtTheme.titleMedium,),
                          ],
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red
                              ),
                            ),
                            Text('Calog3',style: App_txt_theme.lightTxtTheme.titleMedium,),
                          ],
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red
                              ),
                            ),
                            Text('Calog4',style: App_txt_theme.lightTxtTheme.titleMedium,),
                          ],
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red
                              ),
                            ),
                            Text('Calog5',style: App_txt_theme.lightTxtTheme.titleMedium,),
                          ],
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red
                              ),
                            ),
                            Text('Calog6',style: App_txt_theme.lightTxtTheme.titleMedium,),
                          ],
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red
                              ),
                            ),
                            Text('Calog7',style: App_txt_theme.lightTxtTheme.titleMedium,),
                          ],
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red
                              ),
                            ),
                            Text('Calog8',style: App_txt_theme.lightTxtTheme.titleMedium,),
                          ],
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red
                              ),
                            ),
                            Text('Calog9',style: App_txt_theme.lightTxtTheme.titleMedium,),
                          ],
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red
                              ),
                            ),
                            Text('Calog10',style: App_txt_theme.lightTxtTheme.titleMedium,),
                          ],
                        )
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                height: 430,
                // color: Colors.blue,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 400,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 400,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.orangeAccent
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 400,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
              ],
        )
      ),
    );
  }
}
