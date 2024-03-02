

import 'package:team_track/models/user.dart';

class Notification {
  late String title;
  late String description;
  late List<User> users;
  late DateTime createdAt;
  late DateTime readAt;
  late bool trash;

  Notification({
    required this.title,
    required this.description,
    required this.users,
    required this.createdAt,
    required this.readAt,
    required this.trash,
  });
}