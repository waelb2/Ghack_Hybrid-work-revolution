import 'dart:ui';

import 'package:flutter/material.dart';

import '../utils/colors.dart';

class MyStyles {
  static TextStyle boldText = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static TextStyle selectedCalendarDisplay = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 18,
  );
  static TextStyle meduimText = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700
  );
  static TextStyle tableElemText = const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black54,
    fontSize: 16,
  );
  static TextStyle subTitle = TextStyle(
      color: MyColors.primaryColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
  );
  static TextStyle title = TextStyle(
      color: MyColors.primaryColor,
      fontSize: 22,
      fontWeight: FontWeight.bold
  );
}

class TableStyle {

  static TextStyle ktableHeaderTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  
}
