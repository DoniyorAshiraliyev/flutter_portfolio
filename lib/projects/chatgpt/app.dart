import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/chatgpt/page.dart';
import 'package:flutter_portfolio/projects/chatgpt/page1.dart';

class ChatgptApp extends StatelessWidget {
  static const String id = "chatgpt_app";
  const ChatgptApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'chatgpt_app',
      title: 'Chatgpt',
      debugShowCheckedModeBanner: false,
      home:  const PageOne(),
      routes: {
        ChatGpt1.id : (context) => const ChatGpt1(),
      },
    );
  }
}
