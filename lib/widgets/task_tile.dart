import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(
          'Task number 1',
          style: isChecked
              ? const TextStyle(decoration: TextDecoration.lineThrough)
              : null,
        ),
        value: isChecked,
        onChanged: (bool? newValue) {
          setState(() {
            isChecked = newValue ?? false;
          });
        });
  }
}
