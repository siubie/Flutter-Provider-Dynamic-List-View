import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_list/screens/add_task_screen.dart';
import 'package:simple_list/task.dart';
import 'package:simple_list/task_list.dart';

class ListTaskScreen extends StatelessWidget {
  const ListTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Note"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text("Daftar Tugas Mahasiswa Polinema"),
            const Expanded(
              child: TaskList(),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddTaskScreen(),
                          fullscreenDialog: true,
                        ),
                      );
                    },
                    child: const Text("Tambah Task Baru"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
