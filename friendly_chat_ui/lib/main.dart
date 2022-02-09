import 'package:flutter/material.dart';
import 'package:friendly_chat_ui/screens/chat_screen.dart';

void main() {
  runApp(
    const FriendlyChatApp(),
  );
}

class FriendlyChatApp extends StatelessWidget {
  const FriendlyChatApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Friendly Chat',
      home: ChatScreen(),
    );
  }
}
