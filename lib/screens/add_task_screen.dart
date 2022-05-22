import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function(String) addTaskToList;
  const AddTaskScreen({Key? key, required this.addTaskToList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
          ),
          const SizedBox(
            height: 8.0,
          ),
          TextField(
            cursorColor: Colors.lightBlueAccent,
            autofocus: true,
            decoration:
                const InputDecoration(fillColor: Colors.lightBlueAccent),
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          TextButton(
            onPressed: () {
              addTaskToList(newTaskTitle);
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
            ),
            child: const Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
