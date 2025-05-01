import 'package:bloooc_apppp/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchView extends StatelessWidget {
  const SwitchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Page"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                var triggerSwitchCubit = BlocProvider.of<TriggerSwitchCubit>(
                  context,
                );
                triggerSwitchCubit.errorSwitch();
              },
              child: Text("Error"),
            ),
            ElevatedButton(
              onPressed: () {
                var triggerSwitchCubit = BlocProvider.of<TriggerSwitchCubit>(
                  context,
                );
                triggerSwitchCubit.triggerSwitch(isOn: true);
              },
              child: Text("Update"),
            ),
          ],
        ),
      ),
    );
  }
}
