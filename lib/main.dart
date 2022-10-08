import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_list/screens/add_task_screen.dart';
import 'package:simple_list/screens/list_task_screen.dart';
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
      initialRoute: "/",
      routes: {
        '/': (context) => const ListTaskScreen(),
        '/addTask': (context) => const AddTaskScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
