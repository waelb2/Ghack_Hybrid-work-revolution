import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:team_track/utils/colors.dart';


class MyStyles {
  static TextStyle boldText = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static TextStyle meduimText = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700
  );
}

class TableStyle {

  static TextStyle ktableHeaderTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle ktableHeader = const TextStyle(
    color: Color(0xFF5534A5) ,
    fontSize: 36,
    fontWeight: FontWeight.bold,

  );
  
  static TextStyle khintStyle  = const TextStyle(
    fontSize: 16,
    color: Color(0xff4F7396),
  );
   static TextStyle kChoisStyle = const TextStyle(
    color: Color(0xFF5534A5) ,
    fontSize: 14,
   );
  
}


class PersonalStyle{


  static TextStyle   nameStyle = const TextStyle(
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static TextStyle   jobStyle = const TextStyle(
    color: Color(0xff637587),
    fontSize: 16,
  );
  

 static TextStyle   messageStyle = const TextStyle(color: Color(0xFF5534A5) ,fontSize: 14);
  

   static TextStyle   tabBarStyle = const TextStyle(color: Color(0xFF5534A5) ,fontSize: 22);


   static TextStyle infoTitleStyle = const TextStyle(
              color: Color(0xFF5534A5),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            );

   static TextStyle infoSubTitleStyle = const TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            );

}

 