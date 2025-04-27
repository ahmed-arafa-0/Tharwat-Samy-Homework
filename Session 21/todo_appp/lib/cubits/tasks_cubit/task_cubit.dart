import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_appp/constants/task_list.dart';
import 'package:todo_appp/cubits/tasks_cubit/task_cubit_states.dart';
import 'package:todo_appp/services/tasks_managment.dart';

class TaskCubit extends Cubit<TaskCubitStates> {
  TaskCubit() : super(NoTasksState());

  addTask({required String text}) {
    TasksManagment().addTask(text: text);
    updateTasks();
  }

  removeTask({required String text}) {
    TasksManagment().removeTask(text: text);
    updateTasks();
  }

  toggleTask({required String text}) {
    TasksManagment().toggleTask(text: text);
    updateTasks();
  }

  updateTasks() {
    if (tasksList.isEmpty) {
      emit(NoTasksState());
    } else {
      emit(UpdateTasksState());
    }
  }
}
