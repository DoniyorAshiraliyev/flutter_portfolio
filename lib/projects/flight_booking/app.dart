import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/flight_booking/screens/details_screen.dart';
import 'package:flutter_portfolio/projects/flight_booking/screens/home_screen.dart';
import 'package:flutter_portfolio/projects/flight_booking/screens/ticket_screen.dart';

class FlightBookingApp extends StatelessWidget {
  static const String id = "flight_booking_app";

  const FlightBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'spotify_app',
      title: 'Spotify',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        DetailsScreen.id: (context) => const DetailsScreen(),
        TicketScreen.id: (context) => const TicketScreen()
      },
    );
  }
}
