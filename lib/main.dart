import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_list/task.dart';
import 'package:simple_list/task_list.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Task(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListTaskScreen(),
    );
  }
}

class ListTaskScreen extends StatelessWidget {
  const ListTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Note"),
      ),
      body: Column(
        children: [
          const Text("Daftar Tugas Mahasiswa Polinema"),
          const Expanded(
            child: TaskList(),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<Task>().addTask("Task Baru");
            },
            child: const Text("Tambah Task Baru"),
          ),
        ],
      ),
    );
  }
}
