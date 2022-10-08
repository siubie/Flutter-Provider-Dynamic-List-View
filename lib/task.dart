import 'package:flutter/material.dart';

class Task with ChangeNotifier {
  List<String> taskList = [];

  void addTask(String taskName) {
    int taskNumber = taskList.length;
    taskList.add("$taskName $taskNumber");
    notifyListeners();
  }

  void deleteTask(int index) {
    taskList.removeAt(index);
    notifyListeners();
  }
}
