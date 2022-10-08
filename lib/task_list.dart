import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_list/task.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Task>(
      builder: (context, task, child) {
        return ListView.builder(
          itemCount: task.taskList.length,
          itemBuilder: (context, index) {
            final item = task.taskList[index];
            return Dismissible(
              key: Key(item),
              onDismissed: (direction) {
                // Then show a snackbar.
                task.deleteTask(index);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$item berhasil dihapus'),
                    duration: const Duration(
                      milliseconds: 500,
                    ),
                  ),
                );
              },
              background: Container(color: Colors.red),
              child: ListTile(
                title: Text(
                  task.taskList[index],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
