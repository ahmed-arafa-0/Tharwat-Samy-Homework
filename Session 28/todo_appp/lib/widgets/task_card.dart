import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_appp/models/task_model.dart';

import '../cubits/tasks_cubit/task_cubit.dart';

class TaskCard extends StatelessWidget {
  final TaskModel task;
  // final int index;
  const TaskCard({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Card(
        child: ListTile(
          leading: IconButton(
            onPressed: () {
              BlocProvider.of<TaskCubit>(context).toggleTask(task: task);
            },
            icon:
                task.isCompleted
                    ? Icon(Icons.check_box)
                    : Icon(Icons.check_box_outline_blank),
          ),
          title: Text(
            task.text,
            style: TextStyle(
              decoration:
                  task.isCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
            ),
          ),
          subtitle: Text(
            "Created At : ${task.date.year}-${task.date.month}-${task.date.day} ${task.date.hour}-${task.date.minute}",
          ),
          trailing: IconButton(
            onPressed: () {
              BlocProvider.of<TaskCubit>(context).removeTask(task: task);
            },
            icon: Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}
