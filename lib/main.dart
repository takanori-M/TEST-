import 'package:flutter/material.dart';
import 'package:test1/Message_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).canvasColor,
        elevation: .6,
        title: const Text(
          'Message',
          style: TextStyle(color: Colors.black87),
        ),centerTitle: true,
        actions: <Widget> [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.black87,
            onPressed: () {},)
        ]
      ),
      body: const SafeArea(
        child: MessageScreen(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
          icon: Icon(Icons.chat), 
          label: 'Chats'
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.call), 
          label: 'Calls'
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.settings), 
          label: 'Settings'
          ),
        ],
      ),
    );
  }
}

