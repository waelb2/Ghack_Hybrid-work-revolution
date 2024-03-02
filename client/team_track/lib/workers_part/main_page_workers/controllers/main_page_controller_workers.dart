import 'package:get/get.dart';
import 'package:team_track/utils/enums.dart';

class MainPageControllerWorker extends GetxController {
  Rx<WorkerSideBarElements> workerSideBarElement = WorkerSideBarElements.ProjectsAndTasks.obs ;

  void changePage(WorkerSideBarElements m){
    workerSideBarElement.value = m ;
  }

}