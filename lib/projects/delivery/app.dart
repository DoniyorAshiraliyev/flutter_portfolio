import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/delivery/pages/enter_code_page.dart';
import 'package:flutter_portfolio/projects/delivery/pages/enter_page.dart';
import 'package:flutter_portfolio/projects/delivery/pages/get_started_page.dart';
import 'package:flutter_portfolio/projects/delivery/pages/location_page.dart';
import 'package:flutter_portfolio/projects/delivery/pages/login_page.dart';
import 'package:flutter_portfolio/projects/delivery/pages/phone_number_page.dart';
import 'package:flutter_portfolio/projects/delivery/pages/sign_up_page.dart';

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const EnterPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        EnterPage.id: (context) => const EnterPage(),
        GetStartedPage.id: (context) => const GetStartedPage(),
        PhoneNumberPage.id: (context) => const PhoneNumberPage(),
        EnterCodePage.id: (context) => const EnterCodePage(),
        LocationPage.id: (context) => const LocationPage(),
        LoginPage.id: (context) => const LoginPage(),
        SignUpPage.id: (context) => const SignUpPage(),
      },
    );
  }
}
