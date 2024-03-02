import 'package:team_track/models/project.dart';
import 'package:team_track/models/user.dart';

class Task {
  late String name;
  late String type;
  late Project project;
  late User createdBy;
  late User affectedTo;
  late DateTime createdAt;
  late DateTime deadline;
  late bool completed;
  late double progress;

  Task({
    required this.name,
    required this.type,
    required this.project,
    required this.createdBy,
    required this.affectedTo,
    required this.createdAt,
    required this.deadline,
    required this.completed,
    required this.progress,
  });
}