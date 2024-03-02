import 'package:team_track/models/user.dart';

class Workday {
  late User user;
  late DateTime begin;
  late DateTime end;
  late double hoursWorked;
  late String report;
  late String typeOfWorkday;
  late double hoursRest ;

  Workday({
    required this.user,
    required this.begin,
    required this.end,
    required this.hoursWorked,
    required this.report,
    required this.typeOfWorkday,
    required this.hoursRest,
  });
}