import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/bookmark/pages/registration.dart';

class SplashPage extends StatefulWidget {
  static const String id = "splash_page";

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const RegistrationPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3D4EED),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Image.asset("assets/images/bookmark/logo_white.png"),
        ),
      ),
    );
  }
}
