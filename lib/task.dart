import 'package:flutter/material.dart';

class Task with ChangeNotifier {
  List<String> taskList = [];
  String _task = "";
  String? _taskErrorMessage = null;
  bool _isValid = false;

  get task => _task;
  get taskErrorMessage => _taskErrorMessage;
  get isValid => _isValid;

  void addTask() {
    int taskNumber = taskList.length;
    taskList.add("$_task");
    resetFormData();
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
      _isValid = true;
    } else {
      _task = taskName;
      _taskErrorMessage = "Harus Diisi";
      _isValid = false;
    }
    notifyListeners();
  }

  void resetFormData() {
    _task = "";
    _isValid = false;
    _taskErrorMessage = null;
  }
}
