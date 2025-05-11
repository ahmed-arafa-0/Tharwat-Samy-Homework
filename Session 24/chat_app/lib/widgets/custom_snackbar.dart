import 'package:flutter/material.dart';

void cutomeSnackbar({required BuildContext context, required String text}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}
