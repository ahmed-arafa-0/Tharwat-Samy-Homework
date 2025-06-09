import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_appp/cubits/tasks_cubit/task_cubit.dart';
import 'task_card.dart';

class TaskListViewBuilder extends StatelessWidget {
  const TaskListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:
          BlocProvider.of<TaskCubit>(context).tasksManagment.tasks.length,
      itemBuilder: (context, index) {
        return TaskCard(
          task: BlocProvider.of<TaskCubit>(context).tasksManagment.tasks[index],
        );
      },
    );
  }
}
