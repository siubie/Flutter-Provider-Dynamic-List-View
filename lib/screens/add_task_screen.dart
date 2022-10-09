import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_list/task.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create New Task"),
        actions: [
          TextButton(
            onPressed: context.watch<Task>().isValid
                ? () {
                    context.read<Task>().addTask();
                    Navigator.pop(context);
                  }
                : null,
            child: const Text(
              "Add",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Masukkan Nama Task",
                errorText: context.watch<Task>().taskErrorMessage,
              ),
              onChanged: (value) {
                context.read<Task>().setTaskName(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
