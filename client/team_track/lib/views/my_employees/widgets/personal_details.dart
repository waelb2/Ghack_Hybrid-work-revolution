import 'package:flutter/material.dart';
import 'package:team_track/styles/my_styles.dart';
import 'package:team_track/utils/colors.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0, // Adjusts the elevation height
      margin: const EdgeInsets.symmetric(horizontal: 150, vertical: 30),
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(10.0), // Border radius for rounded corners
      ),
      child: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Divider(
              color: MyColors.primaryColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Information(
                  icon: Icons.badge,
                  title: "Role",
                  subWidget: Text(
                    "Software engineer ",
                    style: PersonalStyle.infoSubTitleStyle,
                  ),
                ),
                Information(
                  icon: Icons.person_outline_rounded,
                  title: "Team",
                  subWidget: Text(
                    "Product V team ",
                    style: PersonalStyle.infoSubTitleStyle,
                  ),
                ),
                Information(
                  icon: Icons.phone_in_talk,
                  title: "Phone",
                  subWidget: Text(
                    "0545321029",
                    style: PersonalStyle.infoSubTitleStyle,
                  ),
                ),
              ],
            ),
            Divider(
              color: MyColors.primaryColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                                Information(
                  icon: Icons.badge,
                  title: "Remote/ On-site",
                  subWidget: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: MyColors.primaryColor),
                    child: Text(
                      "View in Calendar  ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Information(
                  icon: Icons.calendar_month,
                  title: "Join Date",
                  subWidget: Text(
                    "May 13, 2023 ",
                    style: PersonalStyle.infoSubTitleStyle,
                  ),
                ),
                Information(
                  icon: Icons.email_outlined,
                  title: "Email",
                  subWidget: Text(
                    "example@gmail.com ",
                    style: PersonalStyle.infoSubTitleStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Information extends StatelessWidget {
  IconData icon;
  String title;
  Widget subWidget;
  Information(
      {required this.icon, required this.title, required this.subWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 14,
                color: MyColors.primaryColor,
              ),
              Text(title, style: PersonalStyle.infoTitleStyle),
            ],
          ),
          subWidget,
        ],
      ),
    );
  }
}
