import 'package:team_track/models/task.dart';
import 'package:team_track/models/workday.dart';

class User {
  late String firstName;
  late String lastName;
  late String email;
  late String phoneNumber;
  late String image;
  late DateTime joinDate;
  late String typeOfWork;
  late String role;
  late String department;
  late String calendar;
  late String password;
  late List<Task> taskList;
  late List<Workday> workdays;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.image,
    required this.joinDate,
    required this.typeOfWork,
    required this.role,
    required this.department,
    required this.calendar,
    required this.password,
    required this.taskList,
    required this.workdays,
  });
}
