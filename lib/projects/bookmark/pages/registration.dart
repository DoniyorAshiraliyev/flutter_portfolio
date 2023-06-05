import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/bookmark/pages/signin.dart';
import 'package:flutter_portfolio/projects/bookmark/pages/signup.dart';

class RegistrationPage extends StatefulWidget {
  static const String id = "welcome_page";
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bookmark/main_backgrouund.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bookmark/logo_blue.png"),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, LoginPage.id);
              },
              child: Container(
                padding: const EdgeInsets.only(right: 25, left: 25),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 64,
                      color: const Color(0xFF3D4EED),
                      alignment: Alignment.center,
                      child: const Text(
                        "Log into account",
                        style: TextStyle(
                          fontFamily: "raleway",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignupPage.id);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 64,
                        margin: const EdgeInsets.only(top: 24),
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: const Text(
                          "Create an account",
                          style: TextStyle(
                            fontFamily: "raleway",
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
