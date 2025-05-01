import 'package:bloooc_apppp/cubit/states.dart';
import 'package:bloooc_apppp/views/switch_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: BlocBuilder<TriggerSwitchCubit, SwitchState>(
          builder: (context, state) {
            if (state is InitialState) {
              return Text("Initial State");
            } else if (state is UpdatedState) {
              return Text("Update State");
            } else {
              return Text("Error State");
            }
          },
        ),
        // child: Text("ON", style: Theme.of(context).textTheme.headlineMedium),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return SwitchView();
              },
            ),
          );
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
