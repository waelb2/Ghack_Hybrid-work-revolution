import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_track/styles/my_styles.dart';
import 'package:team_track/utils/colors.dart';
import 'package:team_track/utils/enums.dart';

import 'widgets/employee_data.dart';
import 'widgets/performance_widget.dart';
import 'widgets/status_widget.dart';
import 'widgets/custom_containder.dart';

class Employee {
  String name;

  String role;

  String location;

  String title;

  JobType jobType;

  Status status;

  double performance;

  Employee({
    required this.name,
    required this.role,
    required this.location,
    required this.title,
    required this.jobType,
    required this.status,
    required this.performance,
  });
}


class MyEmployees extends StatefulWidget {
  const MyEmployees({Key? key}) : super(key: key);

  @override
  State<MyEmployees> createState() => _MyEmployeesState();
}

class _MyEmployeesState extends State<MyEmployees> {
  List<Employee> _employees = [
    Employee(
      name: 'John Doe',
      role: 'Software Engineer',
      location: 'New York',
      title: 'Senior Software Engineer',
      jobType: JobType.FULL_TIME,
      status: Status.REMOTE,
      performance: 4,
    ),
    Employee(
      name: 'Jane Doe',
      role: 'Software Engineer',
      location: 'New York',
      title: 'Senior Software Engineer',
      jobType: JobType.FULL_TIME,
      status: Status.ON_SITE,
      performance: 25,
    ),
    Employee(
      name: 'John Doe',
      role: 'Software Engineer',
      location: 'New York',
      title: 'Senior Software Engineer',
      jobType: JobType.FULL_TIME,
      status: Status.ON_SITE,
      performance: 4,
    ),
    Employee(
      name: 'John Doe',
      role: 'Software Engineer',
      location: 'New York',
      title: 'Senior Software Engineer',
      jobType: JobType.FULL_TIME,
      status: Status.REMOTE,
      performance: 40,
    ),
    Employee(
      name: 'John Doe',
      role: 'Software Engineer',
      location: 'New York',
      title: 'Senior Software Engineer',
      jobType: JobType.PART_TIME,
      status: Status.ON_SITE,
      performance: 60,
    ),
    Employee(
      name: 'Riad challal ',
      role: 'Software Dahamni',
      location: 'New York',
      title: 'Senior Software Engineer',
      jobType: JobType.FULL_TIME,
      status: Status.ON_SITE,
      performance: 80,
    ),
    Employee(
      name: 'Yasser korzane',
      role: 'Mobile Developer',
      location: 'Algers',
      title: 'Senior Software Engineer',
      jobType: JobType.FULL_TIME,
      status: Status.ON_SITE,
      performance: 100,
    ),
    Employee(
      name: 'John Doe',
      role: 'Software Engineer',
      location: 'New York',
      title: 'Senior Software Engineer',
      jobType: JobType.FULL_TIME,
      status: Status.REMOTE,
      performance: 4,
    ),
    Employee(
      name: 'Jane Doe',
      role: 'Software Engineer',
      location: 'New York',
      title: 'Senior Software Engineer',
      jobType: JobType.FULL_TIME,
      status: Status.ON_SITE,
      performance: 25,
    ),
    Employee(
      name: 'John Doe',
      role: 'Software Engineer',
      location: 'New York',
      title: 'Senior Software Engineer',
      jobType: JobType.FULL_TIME,
      status: Status.ON_SITE,
      performance: 4,
    ),
    Employee(
      name: 'John Doe',
      role: 'Software Engineer',
      location: 'New York',
      title: 'Senior Software Engineer',
      jobType: JobType.FULL_TIME,
      status: Status.REMOTE,
      performance: 40,
    ),
    Employee(
      name: 'John Doe',
      role: 'Software Engineer',
      location: 'New York',
      title: 'Senior Software Engineer',
      jobType: JobType.PART_TIME,
      status: Status.ON_SITE,
      performance: 60,
    ),
    Employee(
      name: 'Riad challal ',
      role: 'Software Dahamni',
      location: 'New York',
      title: 'Senior Software Engineer',
      jobType: JobType.FULL_TIME,
      status: Status.ON_SITE,
      performance: 80,
    ),
    Employee(
      name: 'Yasser korzane',
      role: 'Mobile Developer',
      location: 'Algers',
      title: 'Senior Software Engineer',
      jobType: JobType.FULL_TIME,
      status: Status.ON_SITE,
      performance: 100,
    ),
  ];

  int _rowsPerPage = 6; // Adjust the number of rows per page
  int _currentPage = 0;

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final employeesToDisplay = _employees
        .skip(_currentPage * _rowsPerPage)
        .take(_rowsPerPage)
        .toList();

    return Container(
      margin: const EdgeInsets.only(right: 50, left: 20, top: 20, bottom: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Employees",
            style: TableStyle.ktableHeader,
            textAlign: TextAlign.right,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Search by name, email, or position",
                  hintStyle: TableStyle.khintStyle,
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 0; // Update selected index
                  });
                },
                child: CustomContainer(
                    selectedIndex: selectedIndex,
                    index: 0,
                    text: 'All locations'),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 1; // Update selected index
                  });
                },
                child: CustomContainer(
                    selectedIndex: selectedIndex,
                    index: 1,
                    text: 'All departments'),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 2; // Update selected index
                  });
                },
                child: CustomContainer(
                    selectedIndex: selectedIndex, index: 2, text: 'All status'),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(30),
            ),
            child: PaginatedDataTable(
              horizontalMargin: 6,
              columnSpacing: 34,
              source: EmployeeDataSource(employeesToDisplay),
              rowsPerPage: _rowsPerPage,
              columns: const [
                DataColumn(label: Text('')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Role')),
                DataColumn(label: Text('Location')),
                DataColumn(label: Text('Title')),
                DataColumn(label: Text('Job Type')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Performance')),
              ],
              onPageChanged: (index) => setState(() => _currentPage = index),
            ),
          ),
        ],
      ),
    );
  }
}






