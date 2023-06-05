import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/cars/pages/home.dart';

class CarsApp extends StatelessWidget {
  static const String id = "spotify_app";
  const CarsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      restorationScopeId: 'call_app',
      title: 'Call',
      debugShowCheckedModeBanner: false,
      home: HomePage(),



    );
  }
}
