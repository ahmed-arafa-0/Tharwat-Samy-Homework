import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'task_model.g.dart';

@HiveType(typeId: 0)
// ignore: must_be_immutable
class TaskModel extends Equatable {
  @HiveField(0)
  final String text;

  @HiveField(1)
  final DateTime date;

  @HiveField(2)
  bool isCompleted;

  TaskModel({required this.text, required this.date, this.isCompleted = false});

  void toggleIsCompleted() {
    isCompleted = !isCompleted;
  }

  @override
  List<Object?> get props => [text, date];
}
