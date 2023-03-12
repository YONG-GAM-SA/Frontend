import 'package:flutter/material.dart';
import 'package:mapchatfe/models/chat/chat_model.dart';

class ChatMessage extends StatelessWidget {
  final ChatModel chat;
  const ChatMessage({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: const CircleAvatar(
                child: Text("A"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("성아영"),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[100],
                      borderRadius: BorderRadius.circular(3)),
                  margin: const EdgeInsets.only(top: 5.0),
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child:
                      Text(chat.message, style: const TextStyle(fontSize: 15)),
                )
              ],
            )
          ],
        ));
  }
}
