import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function(bool?)? checkboxCallback;

  const TaskTile(
      {Key? key,
      required this.isChecked,
      required this.taskName,
      required this.checkboxCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(
          taskName,
          style: isChecked
              ? const TextStyle(decoration: TextDecoration.lineThrough)
              : null,
        ),
        value: isChecked,
        onChanged: checkboxCallback);
  }
}
