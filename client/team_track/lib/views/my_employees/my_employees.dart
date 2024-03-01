import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_track/styles/my_styles.dart';





enum JobType {
  FULL_TIME,
  PART_TIME,
  REMOTE,
}

enum Status {
  REMOTE,
  ON_SITE,
}

class Employee {
  String name;

  String role;

  String location;

  String title;

  JobType jobType;

  Status status;

  int performance;

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

class MyEmployees extends StatelessWidget {
  MyEmployees({Key? key}) : super(key: key);

  List<Employee> employees = [
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
      name: 'Jane Doe',
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
      status: Status.ON_SITE,
      performance: 4,
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
      jobType: JobType.PART_TIME,
      status: Status.ON_SITE,
      performance: 4,
    ),
    Employee(
      name: 'Riad challal ',
      role: 'Software Dahamni',
      location: 'New York',
      title: 'Senior Software Engineer',
      jobType: JobType.FULL_TIME,
      status: Status.ON_SITE,
      performance: 4,
    ),
    Employee(
      name: 'Yasser korzane',
      role: 'Mobile Developer',
      location: 'Algers',
      title: 'Senior Software Engineer',
      jobType: JobType.FULL_TIME,
      status: Status.ON_SITE,
      performance: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowHeight: 30,
      headingTextStyle: TableStyle.ktableHeaderTextStyle,
      dividerThickness: 0.5,
      dataRowMinHeight: 30,
      dataRowMaxHeight: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
          ),
        ),
        DataColumn(
          label: Text(
            'Role',
          ),
        ),
        DataColumn(
          label: Text(
            'Location',
          ),
        ),
        DataColumn(
          label: Text(
            'Title',
          ),
        ),
        DataColumn(
          label: Text(
            'Job Type',
          ),
        ),
        DataColumn(
          label: Text(
            'Status',
          ),
        ),
        DataColumn(
          label: Text(
            'Performance',
          ),
        ),
      ],
      rows: employees
          .map(
            (employee) => DataRow(
              cells: [
                DataCell(
                  Text(employee.name),
                  onTap: () {
                    print('Selected ${employee.name}');
                  },
                ),
                DataCell(
                  Text(employee.role),
                  onTap: () {
                    print('Selected ${employee.role}');
                  },
                ),
                DataCell(
                  Text(employee.location),
                  onTap: () {
                    print('Selected ${employee.location}');
                  },
                ),
                DataCell(
                  Text(
                    employee.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  onTap: () {
                    print('Selected ${employee.title}');
                  },
                ),
                DataCell(
                  Text(employee.jobType.toString().split('.').last),
                ),
                DataCell(
                  Text(employee.status.toString().split('.').last),
                ),
                DataCell(
                  Text(employee.performance.toString()),
                ),
              ],
            ),
          )
          .toList(),
      border: TableBorder.symmetric(
        inside: BorderSide.none,
      ),
    );
  }
}
