import 'package:team_track/models/user.dart';

class Meeting {
  late String name;
  late String description;
  late User createdBy; // Change to User object
  late String link;
  late List<User> users; // Change to List<User>
  late DateTime begin;
  late DateTime end;

  Meeting({
    required this.name,
    required this.description,
    required this.createdBy,
    required this.link,
    required this.users,
    required this.begin,
    required this.end,
  });

  // Getter for createdBy User
  User get createdByUser => createdBy;

  // Setter for createdBy User
  set createdByUser(User user) {
    createdBy = user;
  }
}