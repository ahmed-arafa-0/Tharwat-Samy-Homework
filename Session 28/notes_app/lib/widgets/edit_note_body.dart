import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomAppBar(title: 'Edit Note', myIcon: Icons.check),
          SizedBox(height: 16),
          CustomTextFormField(hint: 'Title'),
          SizedBox(height: 16),
          CustomTextFormField(hint: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
