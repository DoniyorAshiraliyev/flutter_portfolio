import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/spotify/registration.dart';
import 'package:flutter_portfolio/projects/spotify/styles.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const RegistrationPage())));
  }

  String get restorationId => 'splash_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.primaryColor,
        body: Center(
          child: Image.asset(
            "assets/images/spotify/spotify_logo.png",
            height: 250,
            width: 250,
          ),
        ));
  }
}

// child: ElevatedButton(
// onPressed: () {
// // Navigator.of(context)
// //     .restorablePushNamed(SpotifyApp.registrationRoute);
// Navigator.of(context)
//     .push(MaterialPageRoute(builder: (BuildContext context) {
// return RegistrationPage();
// }));
// },
// child: Text('Registration'),
// )
