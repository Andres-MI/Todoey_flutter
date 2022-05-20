import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return const TaskTile();
      },
      itemCount: 3,
    );
  }
}