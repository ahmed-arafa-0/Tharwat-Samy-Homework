import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_appp/cubits/tasks_cubit/task_cubit.dart';

class AddTaskSection extends StatefulWidget {
  const AddTaskSection({super.key});

  @override
  State<AddTaskSection> createState() => _AddTaskSectionState();
}

class _AddTaskSectionState extends State<AddTaskSection> {
  // String text = "";

  TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
