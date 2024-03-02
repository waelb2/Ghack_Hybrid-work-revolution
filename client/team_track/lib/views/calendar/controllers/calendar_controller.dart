import 'package:get/get.dart';

import '../../../models/user.dart';
import '../../../models/workday.dart';
import '../../../utils/enums.dart';

class MyCalendarController extends GetxController {
  Rx<Workday> workday = Workday(
      user: User(
        firstName: 'John',
        lastName: 'Doe',
        email: 'john.doe@example.com',
        phoneNumber: '123456789',
        image: 'user_image.jpg',
        joinDate: DateTime.now().subtract(const Duration(days: 365)),
        typeOfWork: 'Developer',
        role: 'Team Lead',
        department: 'IT',
        calendar: 'user_calendar',
        password: 'password123',
        taskList: [],
        workdays: [],
      ),
      begin: DateTime.now().add(const Duration(hours: 2)),
      end: DateTime.now().add(const Duration(hours: 4)),
      hoursWorked: 8,
      report: 'report',
      typeOfWorkday: 'online',
      hoursRest: 1
  ).obs;
  Rx<DisplayCalendar> displayCalendar = DisplayCalendar.day.obs ;

  void changeDisplayCalendar(DisplayCalendar d){
    displayCalendar.value = d ;
    update();
  }
}