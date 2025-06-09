import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_appp/cubits/tasks_cubit/task_cubit.dart';
import 'package:todo_appp/cubits/tasks_cubit/task_cubit_states.dart';
import 'package:todo_appp/services/tasks_managment.dart';
import 'package:todo_appp/widgets/no_task_avaliable.dart';
// import 'package:todo_appp/widgets/no_task_avaliable.dart';

// import '../services/tasks_managment.dart' show TasksManagment;
import 'faild_task.dart';
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
          } else if (state is UpdateTasksState) {
            return TaskListViewBuilder();
          } else if (state is FailureTasksState) {
            return FaliedTask(error: state.errMessage);
          } else if (state is IntialTasksState) {
            if (TasksManagment().tasks.isEmpty) {
              return NoTaskAvaliable();
            } else {
              return TaskListViewBuilder();
            }
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );

    // return Expanded(child: NoTaskAvaliable());
  }
}
