import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/call/styles.dart';


class CallPage extends StatefulWidget {
  static const String id = "call_page";
  const CallPage({Key? key}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/images/call/women.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration:
                BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 60),
            child: Column(
              children: [
                Row(
                  children: [
                    circleIcon(
                        icon: Styles.chat,
                        color: Colors.white.withOpacity(0.35)),
                    const Spacer()
                  ],
                ),
                const SizedBox(
                  height: 110,
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80 / 2),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/call/women.png"),
                          fit: BoxFit.cover)),
                ),
                const Text(
                  "Martha Craig",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Contacting",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    circleIcon(
                        icon: Styles.volume,
                        color: Colors.white.withOpacity(0.35),
                        radius: 50),
                    const SizedBox(
                      width: 30,
                    ),
                    circleIcon(
                        icon: Styles.microphone,
                        color: Colors.white.withOpacity(0.35),
                        radius: 50),
                    const SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();


                      },
                      child: circleIcon(
                          icon: Styles.phoneDown,
                          color: const Color.fromRGBO(254, 41, 77, 1),
                          radius: 50),
                    ),


                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
