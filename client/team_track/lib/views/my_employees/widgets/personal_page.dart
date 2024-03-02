import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:team_track/views/my_employees/my_employees.dart';
import 'package:team_track/views/my_employees/widgets/personal_details.dart';

import '../../../styles/my_styles.dart';
import '../../../utils/colors.dart';
import 'my_tasks.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 1100,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 20,
            child: IconButton(
              onPressed: () {
                  Get.back();
              },
              icon: const Icon(
                Icons.remove_circle_outline,
              ),
              iconSize: 40,
              color: MyColors.primaryColor,
            ),
          ),
          Positioned(
            top: 40,
            right: 480,
            child: Column(
              children: [
                ClipOval(
                  child: Container(
                      height: 110,
                      width: 110,
                      child: Image.network(
                          "https://cdn.pixabay.com/photo/2023/07/10/06/13/mountain-8117525_1280.jpg")),
                ),
                Text(
                  "Liam Smith",
                  style: PersonalStyle.nameStyle,
                ),
                Text(
                  "Software Engineer",
                  style: PersonalStyle.jobStyle,
                ),
                Container(
                  child: Container(
                    margin: const EdgeInsets.only(top: 4),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Message",
                          style: PersonalStyle.messageStyle,
                        ),
                        Icon(
                          Icons.message,
                          color: MyColors.primaryColor,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 240, // Adjust position based on your design
            left: 0,
            right: 0,
            child: TabBar(
              controller: _tabController,
              labelColor: MyColors.primaryColor,
              indicatorColor: MyColors.primaryColor,
              unselectedLabelColor: Colors.grey,
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              tabs: [
                Tab(child: Text("Details")),
                Tab(child: Text("Check Tasks")),
                Tab(child: Text("Daily Reports")),
              ],
            ),
          ),
          Positioned(
            top: 280, // Adjust position based on your design
            left: 0,
            right: 0,
            bottom: 10,
            child: TabBarView(
              controller: _tabController,
              children: [
                Details(),
                MyTasks(),
                Center(
                  child: Text("hichem"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
