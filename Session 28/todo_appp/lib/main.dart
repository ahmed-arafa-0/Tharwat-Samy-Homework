import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_appp/models/task_model.dart';

import 'views/home_view.dart';

void main() async {
  //this will intialize Hive to our app.
  await Hive.initFlutter();
  // this will register's our adater in this case ProductAdapter.
  Hive.registerAdapter(TaskModelAdapter());
  // this will opens our box of products.
  await Hive.openBox<TaskModel>('tasks');
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}
