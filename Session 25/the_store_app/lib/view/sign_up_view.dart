import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:store_app/cubits/sign_up_cubit/sign_up_cubit_states.dart';
import '../widgets/sign_up_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SignUpCubit, SignUpCubitStates>(
        listener: (context, state) {
          // Show SnackBar when loading
          if (state is SignUpLoadingState) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Loading...')));
          }
          // Show SnackBar for success
          else if (state is SignUpSuccessState) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Signed up successfully!')));
          }
          // Optionally show SnackBar for failure (you can define a failure state in your Cubit)
          else if (state is SignUpFailureState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Sign up failed! Please try again.')),
            );
          }
        },
        child: BlocBuilder<SignUpCubit, SignUpCubitStates>(
          builder: (context, state) {
            // Show the sign-up body
            return SignUpbody();
          },
        ),
      ),
    );
  }
}
