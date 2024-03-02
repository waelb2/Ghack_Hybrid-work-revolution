import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:team_track/styles/my_styles.dart';
import 'package:team_track/utils/enums.dart';

import '../../../utils/colors.dart';
import '../my_employees.dart';
import 'performance_widget.dart';
import 'status_widget.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({
    super.key,
    required this.index,
    required this.selectedIndex,
    required this.text,
  });

  int selectedIndex;
  int index;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 6),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: EmployeesColor.getCoiceColor(index, selectedIndex),
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: EmployeesColor.getCoiceColor(
                index, selectedIndex), // Default text color
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}


