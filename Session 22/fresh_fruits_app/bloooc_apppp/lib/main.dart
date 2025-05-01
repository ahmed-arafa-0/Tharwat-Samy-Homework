import 'package:bloooc_apppp/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TriggerSwitchCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}

/*


Bloc Pattern

1- create states
states is the state that can be changed within the ui (no weather, weather info and error weather)

2- create cubit
make the class a manager for the state within cubits [add flutter_bloc package to be extended]

3- create function
make the function that changes the state in cubit

4- provide cubit
make object to pass to the views need to access the cubit and detrmine where it

5- integrate cubit
make the UI hears the states in the cubit

6- trigger cubit
make the cubit to trigger

Pass the data 2 ways


*/
