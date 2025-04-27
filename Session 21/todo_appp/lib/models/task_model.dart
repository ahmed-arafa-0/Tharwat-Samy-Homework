class TaskModel {
  final String text;
  final String date;
  bool isCompleted;

  TaskModel({required this.text, required this.date, this.isCompleted = false});

  void toggleIsCompleted() {
    isCompleted = !isCompleted;
  }
}
