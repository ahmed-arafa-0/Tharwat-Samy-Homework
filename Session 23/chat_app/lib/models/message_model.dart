import '../views/chat_view.dart';

class MessageModel {
  final String message;
  // final DateTime createdAt;
  final String email;

  MessageModel({
    // required this.createdAt,
    required this.email,
    required this.message,
  });

  factory MessageModel.fromJson(jsonData) {
    return MessageModel(
      message: jsonData[messageModelMessageKeyName],
      email: jsonData[messageModelEmailKeyName],
      // createdAt: jsonData[messageModelCreatedAtKeyName].toDate(),
    );
  }
}
