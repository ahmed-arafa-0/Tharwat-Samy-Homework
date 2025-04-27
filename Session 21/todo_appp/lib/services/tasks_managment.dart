// import 'dart:developer';

import 'package:todo_appp/constants/task_list.dart';
import 'package:todo_appp/models/task_model.dart';

class TasksManagment {
  addTask({required String text}) {
    tasksList.add(TaskModel(text: text, date: todayDate()));
  }

  removeTask({required String text}) {
    for (int i = 0; i < tasksList.length; i++) {
      if (tasksList[i].text == text) tasksList.removeAt(i);
    }
  }

  toggleTask({required String text}) {
    for (int i = 0; i < tasksList.length; i++) {
      if (tasksList[i].text == text) tasksList[i].toggleIsCompleted();
    }
  }

  todayDate() {
    DateTime date = DateTime.now();
    return 'Created At : ${date.year}-${date.month}-${date.day} ${date.hour}-${date.minute}';
  }
}
