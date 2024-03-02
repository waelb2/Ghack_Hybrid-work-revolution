import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../my_employees.dart';
import 'performance_widget.dart';
import 'personal_page.dart';
import 'status_widget.dart';





class EmployeeDataSource extends DataTableSource {
  final List<Employee> employees;

  EmployeeDataSource(this.employees);

  @override
  DataRow getRow(int index) {
    if (index >= employees.length || index < 0) return const DataRow(cells: []);

    final employee = employees[index];
    return DataRow(
      cells: [
        DataCell(IconButton(
          onPressed: () {
            Get.defaultDialog(
              radius: 8,
              content: PersonalPage(),
            );
          },
          icon: const Icon(Icons.description_sharp),
          style: ButtonStyle(
            iconColor: MaterialStateProperty.resolveWith(
                (states) => MyColors.primaryColor),
          ),
        )),
        DataCell(
          Text(
            employee.name,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ),
        DataCell(
          Text(
            employee.role,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ),
        DataCell(
          Text(
            employee.location,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        DataCell(
          Text(
            employee.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        DataCell(
          Text(employee.jobType.toString().split('.').last),
        ),
        DataCell(
          StatusWidget(status: employee.status),
        ),
        DataCell(
          Performance(
            performance: employee.performance,
          ),
        ),
      ],
    );
  }

  @override
  bool isRowCountApproximate() {
    // TODO: implement isRowCountApproximate
    return false;
  }

  @override
  // TODO: implement rowCount
  int get rowCount => employees.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}











