import 'package:get/get.dart';

class NavBarController extends GetxController {
  RxBool notificationOn = false.obs;

  void changeNotificationStatus(bool value){
    notificationOn.value = value ;
  }

}