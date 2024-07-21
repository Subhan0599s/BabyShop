import 'package:flutter/material.dart';

class App_colors {
  App_colors._();

  // *********** App Basic Colors ********** //

  static const Color Primery = Color(0xFFFD4080);
  static const Color Primery2 = Color(0xFFF692B4);
  static const Color Secondary = Color(0xFFFACD3E);
  static const Color Accents = Color(0xFFF8BDD1);

  // *********** Gradients Colors ********** //

  static const Gradient Linear_Gradients = LinearGradient(
  begin: Alignment(0.0,0.0),
  end: Alignment(0.707, 0.707),
  colors:[
    Color(0xFFF6719E),
    Color(0xFFF8A4C1),
    Color(0xFFF6B9CD)
  ],
  );

  // *********** Text Colors ************ //

  static const Color Text_Primery = Color(0xFF262626);
  static const Color Text_Secondary = Color(0xFFF8BDD1);
  static const Color Text_White = Color(0xFFFFFFFF);

  // *********** Background Colors ************ //

  static const Color Light = Color(0xFFD7D5D7);
  static const Color Dark = Color(0xFF262626);
  static const Color Primery_Background = Color(0xFFFFFFFF);

  // ************ Background Container Colors *************** //

  static const Color Light_Container = Color(0xFFD0CECE);
  static const Color Dark_Container = Color(0xFF696666);

  // *************** Button Colors ************** //

  static const Color Button_Primery = Color(0xFFFD4080);
  static const Color Button_Secondary = Color(0xFF818080);
  static const Color Button_Disable = Color(0xFFA9A8A8);

 // *************** Borders Colors ************** //

  static const Color Border_Primery = Color(0xFFC5C5C5);
  static const Color Border_Secondary = Color(0xFFE3E2E3);

 // *************** Errors And Validation Colors ************** //

  static const Color Error = Color(0xFFFC1E1E);
  static const Color Success = Color(0xFF2AB421);
  static const Color Warning = Color(0xFFFA4D19);
  static const Color Info = Color(0xFF1C72E0);

  // *************** Neutral Colors ************** //

  static const Color Black = Color(0xFF000000);
  static const Color Darker_Grey = Color(0xFF262626);
  static const Color Dark_Grey = Color(0xFF4F4F4F);
  static const Color Grey = Color(0xFF676667);
  static const Color Soft_Grey = Color(0xFF838383);
  static const Color Light_Grey = Color(0xFFB0AFAF);
  static const Color Creamy = Color(0xFFF3E0E4);
  static const Color White = Color(0xFFFFFFFF);
}