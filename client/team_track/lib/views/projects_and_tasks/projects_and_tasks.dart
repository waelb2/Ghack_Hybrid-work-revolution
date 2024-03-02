import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_track/styles/my_styles.dart';
import 'package:team_track/utils/colors.dart';
import 'package:team_track/utils/strings.dart';
import 'package:team_track/views/projects_and_tasks/controllers/projects_and_tasks_controller.dart';

class ProjectsAndTasks extends StatelessWidget {
  ProjectsAndTasks({super.key});
  final ProjectsAndTasksController _controller = Get.put(ProjectsAndTasksController()) ;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tasks',
                    style: MyStyles.title
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            height: 180,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(34),
                            ),
                            child: SingleChildScrollView(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: DataTable(
                                  columns: [
                                    DataColumn(
                                        label: Text(
                                            'Tasks',
                                            style: MyStyles.tableElemText
                                        ),
                                    ),
                                    DataColumn(
                                        label: Text(
                                            'Date',
                                            style: MyStyles.tableElemText
                                        ),
                                    ),
                                    DataColumn(
                                        label: Text(
                                            'Time',
                                            style: MyStyles.tableElemText
                                        ),
                                    ),
                                    DataColumn(
                                        label: Text(
                                            'Progress',
                                            style: MyStyles.tableElemText
                                        ),
                                    ),
                                  ],
                                  rows: List.generate(
                                        _controller.tasks.length,
                                            (index) => DataRow(
                                                cells: [
                                                  DataCell(
                                                    Row(
                                                      children: [
                                                        Container(
                                                          padding: const EdgeInsets.all(8),
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(14),
                                                            color: MyColors.hlibi,
                                                          ),
                                                          child: Icon(
                                                            Icons.window_rounded,
                                                            color: MyColors.secondaryColor,
                                                          ),
                                                        ),
                                                        const SizedBox(width: 16,),
                                                        Text(
                                                            _controller.tasks[index].name,
                                                            style: MyStyles.meduimText
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  DataCell(
                                                    Text(
                                                      '${_controller.tasks[index].createdAt.year}/${_controller.tasks[index].createdAt.month}/${_controller.tasks[index].createdAt.day}',
                                                      style: MyStyles.meduimText,
                                                    ),
                                                  ),
                                                  DataCell(
                                                    Text(
                                                      '${_controller.tasks[index].createdAt.hour}:${_controller.tasks[index].createdAt.minute}',
                                                      style: MyStyles.meduimText,
                                                    ),
                                                  ),
                                                  DataCell(
                                                    LinearProgressIndicator(
                                                      value: _controller.tasks[index].progress / 100
                                                    )
                                                  ),
                                                ]
                                            ),
                                    ),
                                ),
                              ),
                            ),
                          )
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            height: 180,
                            margin: const EdgeInsets.only(left: 20),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(34),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  MyStrings.completedTaskTitle,
                                  style: MyStyles.boldText,
                                ),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          _controller.tasks.length.toString(),
                                          style: MyStyles.boldText,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(18),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(14),
                                            color: MyColors.hlibi,
                                          ),
                                          child: Icon(
                                            Icons.window_rounded,
                                            color: MyColors.secondaryColor,
                                            size: 60,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: MyColors.secondaryColor)
                      ),
                      onPressed: (){},
                      child: Text(
                        'Add tasks',
                      )
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Projects',
                      style: MyStyles.title
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            height: 180,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(34),
                            ),
                            child: SingleChildScrollView(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: DataTable(
                                  columns: [
                                    DataColumn(
                                      label: Text(
                                          'Project',
                                          style: MyStyles.tableElemText
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                          'Date',
                                          style: MyStyles.tableElemText
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                          'Time',
                                          style: MyStyles.tableElemText
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                          'Progress',
                                          style: MyStyles.tableElemText
                                      ),
                                    ),
                                  ],
                                  rows: List.generate(
                                    _controller.projects.length,
                                        (index) => DataRow(
                                        cells: [
                                          DataCell(
                                            Row(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.all(8),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(14),
                                                    color: MyColors.hlibi,
                                                  ),
                                                  child: Icon(
                                                    Icons.folder_open_outlined,
                                                    color: MyColors.secondaryColor,
                                                  ),
                                                ),
                                                const SizedBox(width: 16,),
                                                Text(
                                                    _controller.projects[index].name,
                                                    style: MyStyles.meduimText
                                                ),
                                              ],
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              '${_controller.projects[index].createdAt.year}/${_controller.projects[index].createdAt.month}/${_controller.projects[index].createdAt.day}',
                                              style: MyStyles.meduimText,
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              '${_controller.projects[index].createdAt.hour}:${_controller.projects[index].createdAt.minute}',
                                              style: MyStyles.meduimText,
                                            ),
                                          ),
                                          DataCell(
                                              LinearProgressIndicator(
                                                  value: _controller.tasks[index].progress / 100
                                              )
                                          ),
                                        ]
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 180,
                          margin: const EdgeInsets.only(left: 20),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(34),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                MyStrings.projectsWorked,
                                style: MyStyles.boldText,
                              ),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        _controller.projects.length.toString(),
                                        style: MyStyles.boldText,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(18),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(14),
                                          color: MyColors.hlibi,
                                        ),
                                        child: Icon(
                                          Icons.folder_open_outlined,
                                          color: MyColors.secondaryColor,
                                          size: 60,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(color: MyColors.secondaryColor)
                      ),
                      onPressed: (){},
                      child: Text(
                          'Add project',
                      )
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}
