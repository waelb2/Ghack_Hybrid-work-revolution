import 'dart:ui';

import 'package:flutter/material.dart';

class MyColors {

  /// When you add a hexa color from figma add "FF" before it

  static Color primaryColor = const Color(0xFF5534A5) ;
  /// here the original color in figma is : 5534A5, you must make it : FF5534A5

  static Color navbarBorder = const Color(0xFFDCDCDC);
  static Color textNonSelected = const Color(0xFF757575);

  static Color remoteGreen = const Color(0xff00D809);
  static Color onSiteOrange = const Color(0xffF79463);
}




class EmployeesColor{
   


      static Color getProgressColor(double value) {
      if (value <= 0.2) {
        return Colors.red;
      } else if (value <= 0.5) {
        return Colors.orange;
      } else if (value <= 0.7) {
        return Colors.green;
      } else {
        return Colors.blue;
      }
    }



    static Color getCoiceColor(int index, int selectedIndex) {
      if (index == selectedIndex) {
        return MyColors.primaryColor;
      } else {
        return MyColors.textNonSelected;
      }
    }


   

 
}

// Remove the incomplete code block
