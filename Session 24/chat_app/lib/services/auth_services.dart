// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:chat_app/views/chat_view.dart';
import 'package:chat_app/views/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/user_credential_model.dart';
import '../widgets/custom_snackbar.dart';

class AuthServices {
  final BuildContext context;

  AuthServices({required this.context});
  Future<void> signUp({
    required UserCredentialModel userCredentialModel,
  }) async {
    try {
      // await Future.delayed(Duration(seconds: 5));
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userCredentialModel.email,
        password: userCredentialModel.password,
      );
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Sign Up Success.")));
      Navigator.of(context).pushReplacementNamed(LoginView.id);
    } on FirebaseAuthException catch (e) {
      log(e.code.toString());
      if (e.code == 'weak-password') {
        cutomeSnackbar(
          context: context,
          text: 'The password provided is too weak.',
        );
      } else if (e.code == 'email-already-in-use') {
        cutomeSnackbar(
          context: context,
          text: 'The account already exists for that email.',
        );
      } else if (e.code == 'invalid-email') {
        cutomeSnackbar(context: context, text: 'Enter a valid Email.');
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("There was an error.")));
    }
  }

  Future<void> signIn({
    required UserCredentialModel userCredentialModel,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userCredentialModel.email,
        password: userCredentialModel.password,
      );
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login Success.")));
      Navigator.of(
        context,
      ).pushReplacementNamed(ChatView.id, arguments: userCredentialModel.email);
    } on FirebaseAuthException catch (e) {
      log(e.code.toString());
      log(e.toString());
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("No user found for that email.")),
        );
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Wrong password provided for that user.")),
        );
        //invalid-credential
      } else if (e.code == 'invalid-credential') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Email or password provided for that user is wrong."),
          ),
        );
      } else if (e.code == 'invalid-email') {
        cutomeSnackbar(context: context, text: 'Enter a valid Email.');
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("There was an error.")));
    }
  }
}
