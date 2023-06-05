import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/bookmark/pages/signup.dart';
import 'package:flutter_portfolio/projects/bookmark/pages/splash.dart';
import 'package:flutter_portfolio/projects/bookmark/pages/signin.dart';
import 'package:flutter_portfolio/projects/bookmark/pages/reading_page.dart';
import 'package:flutter_portfolio/projects/bookmark/pages/registration.dart';

class BookmarkApp extends StatelessWidget {
  static const String id = "spotify_app";
  const BookmarkApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'bookmark_app',
      title: 'Bookmark',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.id,
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        RegistrationPage.id: (context) => const RegistrationPage(),
        LoginPage.id: (context) => const LoginPage(),
        SignupPage.id: (context) => const SignupPage(),
        ReadingPage.id: (context) => const ReadingPage(),
      },

    );
  }
}
