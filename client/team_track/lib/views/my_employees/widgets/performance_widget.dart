import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class Performance extends StatefulWidget {
  final double performance;
  const Performance({required this.performance, Key? key}) : super(key: key);

  @override
  State<Performance> createState() => _PerformanceState();
}

class _PerformanceState extends State<Performance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: LinearProgressIndicator(
        value: widget.performance / 100,
        backgroundColor: Colors.grey.shade400,
        valueColor: AlwaysStoppedAnimation<Color>(EmployeesColor.getProgressColor(widget.performance / 100)),
      ),
          );
  }
}
