import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/call/call.dart';
import 'package:flutter_portfolio/projects/call/profile.dart';
import 'package:flutter_portfolio/projects/call/videocall.dart';
class CallApp extends StatelessWidget {
  static const String id = "spotify_app";
  const CallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'call_app',
      title: 'Call',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(
        color: Colors.blue,
        ),
        focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
        style: BorderStyle.solid,
        color: Colors.blue,width: 1.5
    ),),


        )
      ),
      home: const ProfilePage(),
      routes:{
        ProfilePage.id:(context)=>const ProfilePage(),
        CallPage.id:(context)=>const CallPage(),
        VideocallPage.id:(context)=>const VideocallPage(),

      },

    );
  }
}
