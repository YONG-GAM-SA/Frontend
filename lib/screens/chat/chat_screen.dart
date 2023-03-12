import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mapchatfe/models/chat/chat_model.dart';
import 'package:mapchatfe/widgets/chat/chat_message.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';

class ChatScreen extends StatefulWidget {
  final int chatroomId;

  const ChatScreen({super.key, required this.chatroomId});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late StompClient client;
  final List<ChatModel> _chats = [];
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    client = StompClient(
      config: StompConfig(
        url: 'ws://43.201.61.9:80/map-chat',
        onConnect: onConnect,
        onWebSocketError: (dynamic error) => print(error.toString()),
      ),
    );
    client.activate();
    super.initState();
  }

  @override
  void dispose() {
    client.deactivate();
    super.dispose();
  }

  void onConnect(StompFrame frame) {
    client.subscribe(
      destination: '/topic/chatroom/${widget.chatroomId}',
      callback: (frame) {
        _chats.add(ChatModel.fromJSON(jsonDecode(frame.body!)));
        setState(() {});
      },
    );
  }

  void sendChat() {
    client.send(
      destination: "/pub/chat/room/${widget.chatroomId}/message",
      body: jsonEncode(
        {
          "type": "type",
          "sender": "성아영",
          "message": _controller.value.text,
          "receiver": "receiver",
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.chatroomId}번방'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ChatMessage(chat: _chats[index]);
                },
                separatorBuilder: (context, index) => const SizedBox(height: 5),
                itemCount: _chats.length,
              ),
            ),
            Row(children: [
              Flexible(
                  flex: 7,
                  child: TextField(
                    controller: _controller,
                  )),
              GestureDetector(
                  onTap: sendChat,
                  child: Flexible(
                    flex: 3,
                    child: IconButton(
                      onPressed: sendChat,
                      icon: const Icon(Icons.send),
                    ),
                  ))
            ])
          ],
        ),
      ),
    );
  }
}
