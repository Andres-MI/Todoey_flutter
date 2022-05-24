import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
        builder: (BuildContext context, taskData, Widget? child) {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          final taskItem = taskData.tasks[index];
          return TaskTile(
            taskName: taskItem.name,
            isChecked: taskItem.isDone,
            checkboxCallback: (checkBoxState) {
              taskData.updateTask(taskItem);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
