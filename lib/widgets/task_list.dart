import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return CheckboxListTile(
            title: const Text('Task number 1'),
            value: false,
            onChanged: (bool? value) {});
      },
      itemCount: 3,
    );
  }
}