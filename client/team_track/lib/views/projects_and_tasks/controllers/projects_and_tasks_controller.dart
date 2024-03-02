import 'package:get/get.dart';
import 'package:team_track/models/task.dart';

import '../../../models/project.dart';
import '../../../models/user.dart';


class ProjectsAndTasksController extends GetxController {
  RxList<Task> tasks = <Task>[].obs ;
  RxList<Project> projects = <Project>[].obs ;

  @override
  void onInit() {
    User creatorUser = User(
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
    );

    User affectedUser = User(
      firstName: 'Alice',
      lastName: 'Smith',
      email: 'alice.smith@example.com',
      phoneNumber: '987654321',
      image: 'user_image.jpg',
      joinDate: DateTime.now().subtract(const Duration(days: 180)),
      typeOfWork: 'Designer',
      role: 'Designer',
      department: 'Design',
      calendar: 'user_calendar',
      password: 'password456',
      taskList: [],
      workdays: [],
    );

    // Sample projects
    Project project1 = Project(
      name: 'Project Alpha',
      description: 'A software development project',
      createdBy: creatorUser,
      createdAt: DateTime.now().subtract(const Duration(days: 15)),
      deadline: DateTime.now().add(const Duration(days: 30)),
      tasks: [],
    );

    Project project2 = Project(
      name: 'Project Beta',
      description: 'A design project',
      createdBy: creatorUser,
      createdAt: DateTime.now().subtract(const Duration(days: 10)),
      deadline: DateTime.now().add(const Duration(days: 20)),
      tasks: [],
    );

    // Creating 5 instances of Task with real data
    projects.addNonNull(project1);
    projects.addNonNull(project2);
    tasks = [
      Task(
        name: 'Task 1',
        type: 'Development',
        project: project1,
        createdBy: creatorUser,
        affectedTo: affectedUser,
        createdAt: DateTime.now().subtract(const Duration(days: 5)),
        deadline: DateTime.now().add(const Duration(days: 10)),
        completed: false,
        progress: 20.0,
      ),
      Task(
        name: 'Task 2',
        type: 'Design',
        project: project2,
        createdBy: creatorUser,
        affectedTo: affectedUser,
        createdAt: DateTime.now().subtract(const Duration(days: 8)),
        deadline: DateTime.now().add(const Duration(days: 15)),
        completed: true,
        progress: 50.0,
      ),
      Task(
        name: 'Task 3',
        type: 'Testing',
        project: project1,
        createdBy: creatorUser,
        affectedTo: affectedUser,
        createdAt: DateTime.now().subtract(const Duration(days: 3)),
        deadline: DateTime.now().add(const Duration(days: 12)),
        completed: false,
        progress: 30.0,
      ),
      Task(
        name: 'Task 4',
        type: 'Documentation',
        project: project2,
        createdBy: creatorUser,
        affectedTo: affectedUser,
        createdAt: DateTime.now().subtract(const Duration(days: 10)),
        deadline: DateTime.now().add(const Duration(days: 20)),
        completed: false,
        progress: 10.0,
      ),
      Task(
        name: 'Task 5',
        type: 'Bug Fixing',
        project: project1,
        createdBy: creatorUser,
        affectedTo: affectedUser,
        createdAt: DateTime.now().subtract(const Duration(days: 7)),
        deadline: DateTime.now().add(const Duration(days: 18)),
        completed: false,
        progress: 15.0,
      ),
    ].obs;
    super.onInit();
  }
}