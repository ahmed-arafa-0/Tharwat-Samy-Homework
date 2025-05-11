// import 'dart:developer';

import 'package:chat_app/constants/assets.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/styles/app_colors.dart';
import 'package:chat_app/styles/app_text_style.dart';
import 'package:chat_app/widgets/chat_bubble_reciver.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/chat_bubble_sender.dart';

String messagesCollectionName = 'messages';
String messageModelMessageKeyName = 'message';
String messageModelCreatedAtKeyName = 'createdAt';
String messageModelEmailKeyName = 'email';

// ignore: must_be_immutable
class ChatView extends StatelessWidget {
  static String id = "ChatView";
  TextEditingController messageTextField = TextEditingController();
  ScrollController scrollController = ScrollController();
  // FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference messages = FirebaseFirestore.instance.collection(
    messagesCollectionName,
  );
  ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
      stream:
          messages
              .orderBy(messageModelCreatedAtKeyName, descending: true)
              .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<MessageModel> messagesList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messagesList.add(MessageModel.fromJson(snapshot.data!.docs[i]));
          }
          // log(snapshot.data!.docs[0]['message']);
          // log(snapshot.data!['message'].toString());
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.primaryColor,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Assets.assetsImagesScholar, height: 60),
                  Text("Chat", style: AppTextStyle.regularSecondaryColor),
                ],
              ),
              centerTitle: true,
              automaticallyImplyLeading: false,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    controller: scrollController,
                    itemCount: messagesList.length,
                    itemBuilder: (context, index) {
                      return messagesList[index].email == email
                          ? ChatBubbleSender(messageModel: messagesList[index])
                          : ChatBubbleReciver(
                            messageModel: messagesList[index],
                          );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    onSubmitted: (value) {
                      if (value.isNotEmpty) {
                        messages.add({
                          messageModelMessageKeyName: messageTextField.text,
                          messageModelCreatedAtKeyName: DateTime.now(),
                          messageModelEmailKeyName: email,
                        });
                        messageTextField.clear();
                        scrollController.animateTo(
                          // _scrollController.position.maxScrollExtent,
                          0,
                          duration: Duration(seconds: 1),
                          curve: Curves.bounceIn,
                        );
                      }
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          if (messageTextField.text.isNotEmpty) {
                            messages.add({
                              messageModelMessageKeyName: messageTextField.text,
                              messageModelCreatedAtKeyName: DateTime.now(),
                              messageModelEmailKeyName: email,
                            });
                            messageTextField.clear();
                            scrollController.animateTo(
                              // _scrollController.position.maxScrollExtent,
                              0,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          }
                        },
                        icon: Icon(Icons.send),
                      ),
                      suffixIconColor: AppColors.primaryColor,
                      hintText: "Send Message",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: AppColors.primaryColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: AppColors.primaryColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: AppColors.primaryColor),
                      ),
                    ),
                    controller: messageTextField,
                  ),
                ),
                SizedBox(height: 25),
              ],
            ),
          );
        } else {
          return Scaffold(body: Text('hello'));
        }
      },
    );
  }
}
