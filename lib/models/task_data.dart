import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: "Buy milk"),
    Task(name: "Buy bread"),
    Task(name: "Finish bootcamp"),
  ];

  int get taskCount{
    return tasks.length;
  }
}