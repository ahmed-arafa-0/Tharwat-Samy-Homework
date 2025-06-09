import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_appp/cubits/tasks_cubit/task_cubit_states.dart';
import 'package:todo_appp/services/tasks_managment.dart';
import '../../models/task_model.dart';

class TaskCubit extends Cubit<TaskCubitStates> {
  final TasksManagment tasksManagment = TasksManagment();

  TaskCubit() : super(IntialTasksState());

  addTask({required String text}) {
    emit(LoadingTasksState());
    try {
      tasksManagment.addTask(text: text);
      emit(UpdateTasksState(tasks: tasksManagment.tasks));
    } catch (e) {
      emit(FailureTasksState(errMessage: e.toString()));
    }
  }

  removeTask({required TaskModel task}) {
    emit(LoadingTasksState());
    try {
      tasksManagment.removeTask(task: task);
      if (tasksManagment.tasks.isEmpty) {
        emit(NoTasksState());
      } else {
        emit(UpdateTasksState(tasks: tasksManagment.tasks));
      }
    } catch (e) {
      emit(FailureTasksState(errMessage: e.toString()));
    }
  }

  toggleTask({required TaskModel task}) {
    emit(LoadingTasksState());
    try {
      tasksManagment.toggleTask(task: task);
      emit(UpdateTasksState(tasks: tasksManagment.tasks));
    } catch (e) {
      emit(FailureTasksState(errMessage: e.toString()));
    }
  }
}
