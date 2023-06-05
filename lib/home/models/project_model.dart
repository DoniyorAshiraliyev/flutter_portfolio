import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/book_ticket/app.dart';
import 'package:flutter_portfolio/projects/bookmark/app.dart';
import 'package:flutter_portfolio/projects/call/app.dart';
import 'package:flutter_portfolio/projects/cars/app.dart';
import 'package:flutter_portfolio/projects/chatgpt/app.dart';
import 'package:flutter_portfolio/projects/delivery/app.dart';
import 'package:flutter_portfolio/projects/flight_booking/app.dart';
import 'package:flutter_portfolio/projects/spotify/app.dart';

class Project {
  Project({
    required this.name,
    required this.image,
    required this.onCallProject
  });
  final String name;
  final String image;
   Widget onCallProject;
}


final projects = [
  const CallApp(),
  const SpotifyApp(),
  const FlightBookingApp(),
  const BookmarkApp(),
  // const RegistrationApp()
  // Project(name: "Call App", image: "",onCallProject:()=>CallApp),
  // Project(name: "Spotify App", image: "",onCallProject: SpotifyApp),
  // Project(name: "Flight Booking App", image: "",onCallProject: FlightBookingApp),
  // Project(name: "Bookmark App", image: "",onCallProject: BookmarkApp),
  // Project(name: "Registration App", image: "",onCallProject: RegistrationApp),



];
final myProjects = [
  Project(name: "Call App", image: "call.png",onCallProject:const CallApp()),
  Project(name: "Spotify App", image: "spotify.png",onCallProject: const SpotifyApp()),
  Project(name: "Flight Booking App", image: "flight_booking.png",onCallProject:const FlightBookingApp()),
  Project(name: "Bookmark App", image: "bookmark.png",onCallProject: const BookmarkApp()),
  Project(name: "Book Ticket App", image: "book_ticket.png",onCallProject: const BookTicketApp()),
  Project(name: "Delivery App", image: "delivery.png",onCallProject: const DeliveryApp()),
  Project(name: "ChatGpt App", image: "chatgpt.png",onCallProject: const ChatgptApp()),
  Project(name: "Cars App", image: "bookmark.png",onCallProject: const CarsApp()),


  // Project(name: "Registration App", image: "",onCallProject: const RegistrationApp()),
];
