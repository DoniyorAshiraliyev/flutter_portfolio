import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/call/styles.dart';


class VideocallPage extends StatefulWidget {
  static const String id = "videocall_page";
  const VideocallPage({Key? key}) : super(key: key);

  @override
  _VideocallPageState createState() =>
      _VideocallPageState();
}

class _VideocallPageState extends State<VideocallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/call/man.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 60),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    circleIcon(
                        icon: Styles.chat,
                        color: Colors.white.withOpacity(0.35)),
                    circleIcon(
                        icon: Styles.camera,
                        color: Colors.white.withOpacity(0.35))
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
                          image: AssetImage("assets/images/women.png"),
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
                Image.asset("assets/images/call/icon.png",
                    fit: BoxFit.cover, height: 30, width: 30),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
