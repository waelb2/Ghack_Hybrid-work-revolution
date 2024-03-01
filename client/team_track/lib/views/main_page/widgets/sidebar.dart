import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Opacity(
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
                    InkWell(
                      onTap: (){},
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
                    Opacity(
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
                    InkWell(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            (_controller.managerSideBarElement.value == ManagerSideBarElements.MyEmployees)
                                ? Image.asset('assets/projects.png')
                                : Image.asset('assets/projects_no_selected.png'),
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
                    Opacity(
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
                    InkWell(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            (_controller.managerSideBarElement.value == ManagerSideBarElements.MyEmployees)
                                ? Image.asset('assets/projects.png')
                                : Image.asset('assets/projects_no_selected.png'),
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
                    Opacity(
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
                    InkWell(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            (_controller.managerSideBarElement.value == ManagerSideBarElements.MyEmployees)
                                ? Image.asset('assets/projects.png')
                                : Image.asset('assets/projects_no_selected.png'),
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
                    Opacity(
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
                    InkWell(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            (_controller.managerSideBarElement.value == ManagerSideBarElements.MyEmployees)
                                ? Image.asset('assets/projects.png')
                                : Image.asset('assets/projects_no_selected.png'),
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
                    Opacity(
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
                    InkWell(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            (_controller.managerSideBarElement.value == ManagerSideBarElements.MyEmployees)
                                ? Image.asset('assets/projects.png')
                                : Image.asset('assets/projects_no_selected.png'),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
