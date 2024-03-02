
import 'package:team_track/models/task.dart';
import 'package:team_track/models/user.dart';

class Project {
  late String name;
  late String description;
  late User createdBy;
  late DateTime createdAt;
  late DateTime deadline;
  late List<Task> tasks;

  Project({
    required this.name,
    required this.description,
    required this.createdBy,
    required this.createdAt,
    required this.deadline,
    required this.tasks,
  });
}