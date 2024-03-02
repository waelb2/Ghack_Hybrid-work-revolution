import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_track/utils/colors.dart';
import 'package:team_track/utils/enums.dart';
import 'package:team_track/utils/strings.dart';
import 'package:team_track/views/main_page/controllers/main_page_controller.dart';
class SideBar extends StatelessWidget {
  SideBar({super.key});
  final MainPageController _controller = Get.find() ;
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
                        opacity:
                        (_controller.managerSideBarElement.value == ManagerSideBarElements.ProjectsAndTasks)
                        ? 1 : 0,
                        child: Container(
                          width: 12,
                          height: 40,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: MyColors.primaryColor,
                            borderRadius: const BorderRadius.only(
                              topRight:  Radius.circular(14.0),
                              bottomRight: Radius.circular(14.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        _controller.changePage(ManagerSideBarElements.ProjectsAndTasks);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            (_controller.managerSideBarElement.value == ManagerSideBarElements.ProjectsAndTasks)
                                ? Image.asset('assets/projects.png')
                                : Image.asset('assets/projects_no_selected.png'),
                            const SizedBox(width: 12,),
                            Text(
                              MyStrings.projectsAndTasks,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: (_controller.managerSideBarElement.value == ManagerSideBarElements.ProjectsAndTasks)
                                      ? MyColors.primaryColor : MyColors.textNonSelected
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 56,),
                  ],
                ),
                const SizedBox(height: 32,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Hero(
                      tag: 'elem',
                      child: Opacity(
                        opacity:
                        (_controller.managerSideBarElement.value == ManagerSideBarElements.MyEmployees)
                            ? 1 : 0,
                        child: Container(
                          width: 12,
                          height: 40,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: MyColors.primaryColor,
                            borderRadius: const BorderRadius.only(
                              topRight:  Radius.circular(14.0),
                              bottomRight: Radius.circular(14.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        _controller.changePage(ManagerSideBarElements.MyEmployees);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            (_controller.managerSideBarElement.value == ManagerSideBarElements.MyEmployees)
                                ? Image.asset('assets/employees.png')
                                : Image.asset('assets/emplyees_non.png'),
                            const SizedBox(width: 12,),
                            Text(
                              MyStrings.myEmployees,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: (_controller.managerSideBarElement.value == ManagerSideBarElements.MyEmployees)
                                      ? MyColors.primaryColor : MyColors.textNonSelected
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Hero(
                      tag: 'elem',
                      child: Opacity(
                        opacity:
                        (_controller.managerSideBarElement.value == ManagerSideBarElements.Calendar)
                            ? 1 : 0,
                        child: Container(
                          width: 12,
                          height: 40,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: MyColors.primaryColor,
                            borderRadius: const BorderRadius.only(
                              topRight:  Radius.circular(14.0),
                              bottomRight: Radius.circular(14.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        _controller.changePage(ManagerSideBarElements.Calendar);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            (_controller.managerSideBarElement.value == ManagerSideBarElements.Calendar)
                                ? Image.asset('assets/calendar.png')
                                : Image.asset('assets/calendar_non.png'),
                            const SizedBox(width: 12,),
                            Text(
                              MyStrings.calendar,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: (_controller.managerSideBarElement.value == ManagerSideBarElements.Calendar)
                                      ? MyColors.primaryColor : MyColors.textNonSelected
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Hero(
                      tag: 'elem',
                      child: Opacity(
                        opacity:
                        (_controller.managerSideBarElement.value == ManagerSideBarElements.MettingSpace)
                            ? 1 : 0,
                        child: Container(
                          width: 12,
                          height: 40,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: MyColors.primaryColor,
                            borderRadius: const BorderRadius.only(
                              topRight:  Radius.circular(14.0),
                              bottomRight: Radius.circular(14.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        _controller.changePage(ManagerSideBarElements.MettingSpace);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            (_controller.managerSideBarElement.value == ManagerSideBarElements.MettingSpace)
                                ? Image.asset('assets/meeting.png')
                                : Image.asset('assets/meeting_non.png'),
                            const SizedBox(width: 12,),
                            Text(
                              MyStrings.metting,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: (_controller.managerSideBarElement.value == ManagerSideBarElements.MettingSpace)
                                      ? MyColors.primaryColor : MyColors.textNonSelected
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Hero(
                      tag: 'elem',
                      child: Opacity(
                        opacity:
                        (_controller.managerSideBarElement.value == ManagerSideBarElements.Analytics)
                            ? 1 : 0,
                        child: Container(
                          width: 12,
                          height: 40,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: MyColors.primaryColor,
                            borderRadius: const BorderRadius.only(
                              topRight:  Radius.circular(14.0),
                              bottomRight: Radius.circular(14.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        _controller.changePage(ManagerSideBarElements.Analytics);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            (_controller.managerSideBarElement.value == ManagerSideBarElements.Analytics)
                                ? Image.asset('assets/analytics.png')
                                : Image.asset('assets/analytics_non.png'),
                            const SizedBox(width: 12,),
                            Text(
                              MyStrings.analytics,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: (_controller.managerSideBarElement.value == ManagerSideBarElements.Analytics)
                                      ? MyColors.primaryColor : MyColors.textNonSelected
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Hero(
                      tag: 'elem',
                      child: Opacity(
                        opacity:
                        (_controller.managerSideBarElement.value == ManagerSideBarElements.Settings)
                            ? 1 : 0,
                        child: Container(
                          width: 12,
                          height: 40,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: MyColors.primaryColor,
                            borderRadius: const BorderRadius.only(
                              topRight:  Radius.circular(14.0),
                              bottomRight: Radius.circular(14.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        _controller.changePage(ManagerSideBarElements.Settings);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            (_controller.managerSideBarElement.value == ManagerSideBarElements.Settings)
                                ? Image.asset('assets/settings.png')
                                : Image.asset('assets/settings_non.png'),
                            const SizedBox(width: 12,),
                            Text(
                              MyStrings.settings,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: (_controller.managerSideBarElement.value == ManagerSideBarElements.Settings)
                                      ? MyColors.primaryColor : MyColors.textNonSelected
                              ),
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
          )
        ],
      ),
    );
  }
}
