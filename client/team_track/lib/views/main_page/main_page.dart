
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:team_track/utils/enums.dart';
import 'package:team_track/views/analytics/amalytics_page.dart';
import 'package:team_track/views/main_page/controllers/main_page_controller.dart';
import 'package:team_track/views/main_page/widgets/navbar.dart';
import 'package:team_track/views/main_page/widgets/sidebar.dart';
import 'package:team_track/views/metting_space/meeting_space_page.dart';
import 'package:team_track/views/my_employees/my_employees.dart';
import 'package:team_track/views/projects_and_tasks/projects_and_tasks.dart';
import 'package:team_track/views/settings/settings_page.dart';
import '../calendar/calendar.dart';

class MainPage extends StatelessWidget {
  final MainPageController _controller = Get.put(MainPageController());
  MainPage({super.key});


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
                  Flexible(child: SideBar()),
                  //CurrentPage(),
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
  final MainPageController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return
      (_controller.managerSideBarElement.value == ManagerSideBarElements.ProjectsAndTasks) ?
        ProjectsAndTasks()
      : (_controller.managerSideBarElement.value == ManagerSideBarElements.MyEmployees) ?
        MyEmployees()
      : (_controller.managerSideBarElement.value == ManagerSideBarElements.Calendar) ?
        Calendar()
      : (_controller.managerSideBarElement.value == ManagerSideBarElements.MettingSpace) ?
        MeetingSpacePage()
      : (_controller.managerSideBarElement.value == ManagerSideBarElements.Analytics) ?
        AnalyticsPage()
      : SettingsPage();
  }
}

