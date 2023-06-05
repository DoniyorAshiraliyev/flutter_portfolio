// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/spotify/splash.dart' ;
import 'package:flutter_portfolio/projects/spotify/routes.dart' as routes;


class SpotifyApp extends StatelessWidget {
  static const String id = "spotify_app";
  const SpotifyApp({super.key});

  static const String splashRoute = routes.splashRoute;
  static const String registrationRoute = routes.registrationRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'spotify_app',
      title: 'Spotify',
      debugShowCheckedModeBanner: false,
      initialRoute: splashRoute,
      routes: <String, WidgetBuilder>{
        splashRoute:(context)=>const SplashPage(),
        registrationRoute:(context)=>const SplashPage()
      },
    );
  }
}
