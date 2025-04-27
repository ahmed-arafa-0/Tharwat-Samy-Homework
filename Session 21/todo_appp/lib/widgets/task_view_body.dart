import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_appp/cubits/tasks_cubit/task_cubit.dart';
import 'package:todo_appp/cubits/tasks_cubit/task_cubit_states.dart';
import 'package:todo_appp/widgets/no_task_avaliable.dart';
// import 'package:todo_appp/widgets/no_task_avaliable.dart';

// import '../services/tasks_managment.dart' show TasksManagment;
import 'task_list_view_builder.dart';

class TaskViewBody extends StatelessWidget {
  const TaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // TasksManagment().todayDate();
    return Expanded(
      child: BlocBuilder<TaskCubit, TaskCubitStates>(
        builder: (context, state) {
          if (state is NoTasksState) {
            return NoTaskAvaliable();
          } else {
            return TaskListViewBuilder();
          }
        },
      ),
    );

    // return Expanded(child: NoTaskAvaliable());
  }
}
