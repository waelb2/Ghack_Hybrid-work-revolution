import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:team_track/styles/my_styles.dart';
import 'package:team_track/utils/colors.dart';
import 'package:team_track/utils/strings.dart';
import 'package:team_track/views/main_page/controllers/navbar_controller.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});
  final NavBarController _controller = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: MyColors.navbarBorder),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/logo.png'),
              const SizedBox(width: 8,),
              Text(
                  MyStrings.appName,
                  style: MyStyles.boldText,
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.help, color: MyColors.primaryColor,),
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(
                    !(_controller.notificationOn.value) ? Icons.notifications_outlined : Icons.notifications_active,
                    color: MyColors.primaryColor,
                  ),
              ),
              const SizedBox(width: 60,),
              Text(
                'Boulacheb Hichem',
                style: MyStyles.meduimText,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
                  border: Border.all(color: MyColors.primaryColor)
                ),
                child: Image.asset(
                  'assets/hichem.png',
                  width: 60,
                  height: 60,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
