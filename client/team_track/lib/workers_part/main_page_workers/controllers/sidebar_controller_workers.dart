import 'dart:async';

import 'package:get/get.dart';

class SideBarController extends GetxController {
  RxBool isWorking = false.obs ;
  RxBool isPaused = false.obs ;
  final restWork = DateTime(0,0,0,1,0,0,0,0).obs;

  void decrementRestWork() {
    isPaused.value = true ;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (isPaused.value){
        restWork.value = restWork.value.subtract(const Duration(seconds: 1));
        print('${restWork.value.hour}:${restWork.value.minute}:${restWork.value
            .second}');
        update();
      }else {
        timer.cancel();
      }
    });
  }

}