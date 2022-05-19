import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          const TextField(
            cursorColor: Colors.lightBlueAccent,
            autofocus: true,
            decoration: InputDecoration(fillColor: Colors.lightBlueAccent),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 8.0,
          ),
          TextButton(
            onPressed: () {
              //TODO: Add Task to the list
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
