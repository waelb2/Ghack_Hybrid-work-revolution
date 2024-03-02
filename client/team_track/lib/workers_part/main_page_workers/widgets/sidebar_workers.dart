import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_track/utils/colors.dart';
import 'package:team_track/utils/enums.dart';
import 'package:team_track/utils/strings.dart';

import '../controllers/main_page_controller_workers.dart';
import '../controllers/sidebar_controller_workers.dart';

class SideBarWorker extends StatelessWidget {
  SideBarWorker({super.key});

  final MainPageControllerWorker _controller = Get.find();
  final SideBarController _sideBarController = Get.put(SideBarController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60),
            child: Obx(() {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Hero(
                        tag: 'elem',
                        child: Opacity(
                          opacity: (_controller.workerSideBarElement.value ==
                              WorkerSideBarElements.ProjectsAndTasks)
                              ? 1
                              : 0,
                          child: Container(
                            width: 12,
                            height: 40,
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              color: MyColors.primaryColor,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(14.0),
                                bottomRight: Radius.circular(14.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _controller.changePage(
                              WorkerSideBarElements.ProjectsAndTasks);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              (_controller.workerSideBarElement.value ==
                                  WorkerSideBarElements.ProjectsAndTasks)
                                  ? Image.asset('assets/projects.png')
                                  : Image.asset(
                                  'assets/projects_no_selected.png'),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                MyStrings.projectsAndTasks,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: (_controller
                                        .workerSideBarElement.value ==
                                        WorkerSideBarElements
                                            .ProjectsAndTasks)
                                        ? MyColors.primaryColor
                                        : MyColors.textNonSelected),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 56,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Hero(
                        tag: 'elem',
                        child: Opacity(
                          opacity: (_controller.workerSideBarElement.value ==
                              WorkerSideBarElements.Calendar)
                              ? 1
                              : 0,
                          child: Container(
                            width: 12,
                            height: 40,
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              color: MyColors.primaryColor,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(14.0),
                                bottomRight: Radius.circular(14.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _controller
                              .changePage(WorkerSideBarElements.Calendar);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              (_controller.workerSideBarElement.value ==
                                  WorkerSideBarElements.Calendar)
                                  ? Image.asset('assets/calendar.png')
                                  : Image.asset('assets/calendar_non.png'),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                MyStrings.calendar,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: (_controller
                                        .workerSideBarElement.value ==
                                        WorkerSideBarElements.Calendar)
                                        ? MyColors.primaryColor
                                        : MyColors.textNonSelected),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Hero(
                        tag: 'elem',
                        child: Opacity(
                          opacity: (_controller.workerSideBarElement.value ==
                              WorkerSideBarElements.MettingSpace)
                              ? 1
                              : 0,
                          child: Container(
                            width: 12,
                            height: 40,
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              color: MyColors.primaryColor,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(14.0),
                                bottomRight: Radius.circular(14.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _controller
                              .changePage(WorkerSideBarElements.MettingSpace);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              (_controller.workerSideBarElement.value ==
                                  WorkerSideBarElements.MettingSpace)
                                  ? Image.asset('assets/meeting.png')
                                  : Image.asset('assets/meeting_non.png'),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                MyStrings.metting,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: (_controller
                                        .workerSideBarElement.value ==
                                        WorkerSideBarElements.MettingSpace)
                                        ? MyColors.primaryColor
                                        : MyColors.textNonSelected),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Hero(
                        tag: 'elem',
                        child: Opacity(
                          opacity: (_controller.workerSideBarElement.value ==
                              WorkerSideBarElements.Collaboration)
                              ? 1
                              : 0,
                          child: Container(
                            width: 12,
                            height: 40,
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              color: MyColors.primaryColor,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(14.0),
                                bottomRight: Radius.circular(14.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _controller
                              .changePage(WorkerSideBarElements.Collaboration);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              (_controller.workerSideBarElement.value ==
                                  WorkerSideBarElements.Collaboration)
                                  ? Image.asset('assets/collaboration.png')
                                  : Image.asset('assets/collaboration_non.png'),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                MyStrings.collaboration,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: (_controller
                                        .workerSideBarElement.value ==
                                        WorkerSideBarElements.Collaboration)
                                        ? MyColors.primaryColor
                                        : MyColors.textNonSelected),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 24),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Obx(() {
                return Column(
                  children: [
                    !(_sideBarController.isWorking.value)
                        ? InkWell(
                      onTap: () async{
                        _sideBarController.isWorking.value = true;
                        _sideBarController.isPaused.value = false;
                        Timer.periodic(const Duration(seconds: 10), (timer) {
                          executePythonScript();
                        });
                        /*Process process = await Process.start('python', ['screenshot.py']);
                        // Log the output of the script
                        process.stdout.transform(utf8.decoder).listen((data) {
                          print(data);
                        });*/
                      },
                      child: Container(
                        padding: const EdgeInsets.all(28),
                        decoration: BoxDecoration(
                            color: MyColors.primaryColor,
                            borderRadius: BorderRadius.circular(24)),
                        child: Image.asset('assets/triangal.png'),
                      ),
                    )
                        : !(_sideBarController.isPaused.value)
                        ? InkWell(
                      onTap: () {
                        _sideBarController.decrementRestWork();
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(28, 24, 28, 24),
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(24)),
                        child: Image.asset('assets/pause.png'),
                      ),
                    )
                        : InkWell(
                      onTap: () {
                        _sideBarController.isPaused.value = false;
                      },
                      child: Container(
                        padding: const EdgeInsets.all(28),
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(24)),
                        child: Image.asset('assets/triangal.png'),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    !(_sideBarController.isWorking.value)
                        ? Text(
                      'Start working',
                      style: TextStyle(
                          color: MyColors.primaryColor,
                          fontWeight: FontWeight.w600),
                    )
                        : GetBuilder<SideBarController>(
                      builder: (logic) {
                        return Text(
                          '${_sideBarController.restWork.value
                              .hour}:${_sideBarController.restWork.value
                              .minute}:${_sideBarController.restWork.value
                              .second}',
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w600),
                        );
                      },
                    ),
                  ],
                );
              }),
            ),
          )
        ],
      ),
    );
  }
  void executePythonScript() async {
    Process process = await Process.start('python', ['screenshot.py']);
    process.stdout.transform(utf8.decoder).listen((data) {
      print(data);
    });
  }
}
