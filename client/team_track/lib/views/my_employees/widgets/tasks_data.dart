import 'package:flutter/material.dart';
import 'package:team_track/utils/colors.dart';

import 'my_tasks.dart';



class TaskDataSource extends DataTableSource {
  final List<Task> tasks;

  TaskDataSource(this.tasks);

  @override
  DataRow getRow(int index) {
    if (index >= tasks.length || index < 0) return const DataRow(cells: []);

    final task = tasks[index];
    return DataRow(
      cells: [
DataCell(
          Text(
            task.task,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ),
        DataCell(
          Text(
            task.project,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ),
        DataCell(
          Text(
            task.time_left.toString(),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        DataCell(
          Text(
            task.status.toString(),
          ),
        ),
        DataCell(
          MaterialButton(
            height: double.minPositive,
            padding: const EdgeInsets.all(4),
            onPressed: () {},
            color: MyColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'View',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.remove_red_eye,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool isRowCountApproximate() {
    return false;
  }

  @override
  int get rowCount => tasks.length;

  @override
  int get selectedRowCount => 0;
}
