import 'package:flutter/material.dart';

class checkboxTheme{
  checkboxTheme._();

  // *************** LIGHT CHECKOUT THEME ************** //

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)) {
        return Colors.white;
    }else{
        return Colors.black;
      }

    }),
    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.pinkAccent;
      }else{
        return Colors.transparent;
      }
  }),
  );

  // ************** DARK CHECKOUT THEME ************** //

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)) {
        return Colors.white;
      }else{
        return Colors.black;
      }

    }),
    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.pinkAccent;
      }else{
        return Colors.transparent;
      }
    }),
  );
}