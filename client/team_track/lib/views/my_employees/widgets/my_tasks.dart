import 'package:flutter/material.dart';

import '../../../utils/enums.dart';
import 'tasks_data.dart';



class Task {
  String task;
  String project;
  DateTime time_left;
  TaskStatus status;
  
  Task(
      {required this.task,
      required this.project,
      required this.time_left,
      required this.status});
}




class MyTasks extends StatefulWidget {
  const MyTasks({Key? key}) : super(key: key);

  @override
  State<MyTasks> createState() => _MyTasksState();
}

class _MyTasksState extends State<MyTasks> {
  List<Task> _tasks = [
    Task(
      task: 'Task 1',
      project: 'Project 1',
      time_left: DateTime.now(),
      status: TaskStatus.IN_PROGRESS,
    ),
    Task(
      task: 'Task 2',
      project: 'Project 2',
      time_left: DateTime.now(),
      status: TaskStatus.COMPLETED,
    ),
    Task(
      task: 'Task 3',
      project: 'Project 3',
      time_left: DateTime.now(),
      status: TaskStatus.IN_PROGRESS,
    ),
    Task(
      task: 'Task 4',
      project: 'Project 4',
      time_left: DateTime.now(),
      status: TaskStatus.TO_DO,
    ),
    Task(
      task: 'Task 5',
      project: 'Project 5',
      time_left: DateTime.now(),
      status: TaskStatus.IN_PROGRESS,
    ),
  ];

  int _rowsPerPage = 3; // Adjust the number of rows per page
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final tasksToDisplay = _tasks
        .skip(_currentPage * _rowsPerPage)
        .take(_rowsPerPage)
        .toList();

    return Container(
      margin: const EdgeInsets.only(right: 100, left: 100, top: 30, bottom: 10),
      child: Container(
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
                    // columnSpacing: 34,
                    source: TaskDataSource(tasksToDisplay),
                    rowsPerPage: _rowsPerPage,
                    columns: const [
                      DataColumn(label: Text('Task'),),
                      DataColumn(label: Text('Project'),),
                      DataColumn(label: Text('Time Left'),),
                      DataColumn(label: Text('Status'),),
                      DataColumn(label: Text("Action"),),
                    ],
                    onPageChanged: (index) => setState(() => _currentPage = index),
                  ),
                ),
    );
  }
}