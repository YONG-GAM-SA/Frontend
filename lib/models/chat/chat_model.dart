class ChatModel {
  final String type, sender, message, receiver;

  ChatModel.fromJSON(Map<String, dynamic> json)
      : type = json['type'],
        sender = json['sender'],
        message = json['message'],
        receiver = json['receiver'];
}
