import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_appp/cubits/tasks_cubit/task_cubit.dart';

// ignore: must_be_immutable
class AddTaskSection extends StatelessWidget {
  const AddTaskSection({super.key});
  // String text = "";
  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: textController,
                // onChanged: (value) {
                //   text = value;
                // },
                decoration: InputDecoration(
                  hintText: 'Add a new task ...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                if (textController.text.isNotEmpty) {
                  BlocProvider.of<TaskCubit>(
                    context,
                  ).addTask(text: textController.text);
                  textController.clear();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('You Cannot add empty task !')),
                  );
                }
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
