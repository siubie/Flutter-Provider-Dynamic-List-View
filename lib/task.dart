import 'package:flutter/material.dart';

class Task with ChangeNotifier {
  List<String> taskList = [];
  String _task = "";
  String? _taskErrorMessage = null;

  get task => _task;
  get taskErrorMessage => _taskErrorMessage;

  void addTask() {
    int taskNumber = taskList.length;
    taskList.add("$_task");
    notifyListeners();
  }

  void deleteTask(int index) {
    taskList.removeAt(index);
    notifyListeners();
  }

  void setTaskName(String taskName) {
    if (taskName.isNotEmpty) {
      _task = taskName;
      _taskErrorMessage = null;
    } else {
      _task = taskName;
      _taskErrorMessage = "Harus Diisi";
    }
  }
}
