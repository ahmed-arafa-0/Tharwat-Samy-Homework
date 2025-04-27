import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_appp/cubits/tasks_cubit/task_cubit.dart';
import 'package:todo_appp/styles/color_styles.dart';
import 'package:todo_appp/widgets/add_task_section.dart';
import 'package:todo_appp/widgets/task_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorStyles.primatyColor,
          title: Text(
            'My Tasks',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [TaskViewBody(), AddTaskSection()]),
        ),
        // bottomSheet:
      ),
    );
  }
}
