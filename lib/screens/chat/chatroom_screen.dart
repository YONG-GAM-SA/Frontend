import 'package:flutter/material.dart';
import 'package:mapchatfe/screens/chat/chat_screen.dart';

class ChatroomScreen extends StatelessWidget {
  ChatroomScreen({super.key});

  final List<int> chatrooms = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: chatrooms.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ChatScreen(chatroomId: chatrooms[index]),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber[600],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text('${chatrooms[index]}번방'),
              ),
            ),
          );
        },
      ),
    ));
  }
}
