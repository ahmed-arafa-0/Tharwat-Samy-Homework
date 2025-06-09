import 'package:equatable/equatable.dart';
import 'package:todo_appp/models/task_model.dart';

class TaskCubitStates extends Equatable {
  const TaskCubitStates();

  @override
  List<Object?> get props => [];
}

class IntialTasksState extends TaskCubitStates {}

class NoTasksState extends TaskCubitStates {}

class FailureTasksState extends TaskCubitStates {
  final String errMessage;

  const FailureTasksState({required this.errMessage});

  @override
  List<Object?> get props => [errMessage];
}

class LoadingTasksState extends TaskCubitStates {}

class UpdateTasksState extends TaskCubitStates {
  final List<TaskModel> tasks;

  const UpdateTasksState({required this.tasks});

  @override
  List<Object?> get props => [tasks];
}
