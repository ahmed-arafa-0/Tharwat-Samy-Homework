import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/cubits/sign_up_cubit/sign_up_cubit.dart';

import 'view/sign_up_view.dart';

void main() {
  runApp(const FreshFruitsApp());
}

class FreshFruitsApp extends StatelessWidget {
  const FreshFruitsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: SignUpView()),
    );
  }
}
