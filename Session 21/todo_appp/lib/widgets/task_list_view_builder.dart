import 'package:flutter/material.dart';
import 'package:todo_appp/constants/task_list.dart';
// import 'package:todo_appp/models/task_model.dart';

import 'task_card.dart';

class TaskListViewBuilder extends StatelessWidget {
  const TaskListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasksList.length,
      itemBuilder: (context, index) {
        return TaskCard(task: tasksList[index]);
      },
    );
  }
}
