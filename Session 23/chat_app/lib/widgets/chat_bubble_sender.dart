import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../styles/app_text_style.dart';

class ChatBubbleSender extends StatelessWidget {
  final MessageModel messageModel;
  const ChatBubbleSender({super.key, required this.messageModel});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(32),
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: Text(
          messageModel.message,
          style: AppTextStyle.regularSecondaryColor,
        ),
      ),
    );
  }
}
