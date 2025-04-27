import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_appp/constants/task_list.dart';
import 'package:todo_appp/cubits/tasks_cubit/task_cubit_states.dart';

class TaskCubit extends Cubit<TaskCubitStates> {
  TaskCubit() : super(NoTasksState());

  updateTasks() {
    if (tasksList.isEmpty) {
      emit(NoTasksState());
    } else {
      emit(UpdateTasksState());
    }
  }
}
