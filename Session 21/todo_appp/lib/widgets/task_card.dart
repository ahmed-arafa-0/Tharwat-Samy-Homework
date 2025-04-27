import 'package:flutter/material.dart';
import 'package:todo_appp/models/task_model.dart';

class TaskCard extends StatelessWidget {
  final TaskModel task;
  const TaskCard({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Card(
        child: ListTile(
          leading: IconButton(
            onPressed: () {},
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
          subtitle: Text(task.date),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
        ),
      ),
    );
  }
}
