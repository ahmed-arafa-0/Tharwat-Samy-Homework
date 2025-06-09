// import 'dart:developer';

// import 'package:todo_appp/constants/task_list.dart';
import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:todo_appp/models/task_model.dart';

class TasksManagment {
  // final List<TaskModel> _tasksList =

  final Box<TaskModel> tasksBox = Hive.box<TaskModel>('tasks');

  List<TaskModel> get tasks => Hive.box<TaskModel>('tasks').values.toList();

  addTask({required String text}) async {
    // _tasksList.add(TaskModel(text: text, date: DateTime.now()));
    await tasksBox.add(TaskModel(text: text, date: DateTime.now()));
    log(tasksBox.values.toString());
  }

  removeTask({required TaskModel task}) {
    // int index =  ;
    tasksBox.deleteAt(tasks.indexOf(task));
    log(tasksBox.values.toString());
  }

  toggleTask({required TaskModel task}) {
    // int index =  _tasksList.indexOf(task);
    task.toggleIsCompleted();
    log(tasksBox.values.toString());
  }

  // todayDate() {
  //   DateTime date = DateTime.now();
  //   return 'Created At : ${date.year}-${date.month}-${date.day} ${date.hour}-${date.minute}';
  // }
}
