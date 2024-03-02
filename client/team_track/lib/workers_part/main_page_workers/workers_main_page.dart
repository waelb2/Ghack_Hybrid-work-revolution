import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_track/utils/colors.dart';
import 'package:team_track/utils/enums.dart';
import 'package:team_track/views/calendar/calendar.dart';
import 'package:team_track/views/main_page/widgets/navbar.dart';
import 'package:team_track/views/metting_space/meeting_space_page.dart';
import 'package:team_track/views/projects_and_tasks/projects_and_tasks.dart';
import 'package:team_track/workers_part/main_page_workers/widgets/sidebar_workers.dart';

import '../collaboration/collaboration.dart';
import 'controllers/main_page_controller_workers.dart';

class MainPageWorkers extends StatelessWidget {
  final MainPageControllerWorker _controller = Get.put(MainPageControllerWorker());

  MainPageWorkers({super.key});

  /**
      The main page is the only page that have scaffold, which will contain the navbar and the sidebar.
      Than the body of the page will change according to the section selected in the sidebar
   **/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            NavBar(),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SideBarWorker(),
                  //Flexible(child: SideBar()),
                  Expanded(child: CurrentPage()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CurrentPage extends StatelessWidget {
  CurrentPage({super.key});

  final MainPageControllerWorker _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
        color: MyColors.background,
        child: (_controller.workerSideBarElement.value ==
            WorkerSideBarElements.ProjectsAndTasks)
            ? ProjectsAndTasks()
            : (_controller.workerSideBarElement.value ==
            WorkerSideBarElements.Calendar)
            ? Calendar()
            : (_controller.workerSideBarElement.value ==
            WorkerSideBarElements.MettingSpace)
            ? MeetingSpacePage()
            : CollaborationPage()
    ));
  }
}
