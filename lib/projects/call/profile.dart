import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/call/call.dart';
import 'package:flutter_portfolio/projects/call/styles.dart';
import 'package:flutter_portfolio/projects/call/videocall.dart';

class ProfilePage extends StatefulWidget {
  static const String id = "profile_page";

  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: const Icon(CupertinoIcons.left_chevron,
                            size: 30, fill: 1)),
                    Center(
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80 / 2),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/call/women.png"),
                                    fit: BoxFit.cover)),
                          ),
                          const Text(
                            "Martha Craig",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Messenger",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(CallPage.id);
                      },
                      child: circleIcon(
                        icon: Styles.phone,
                        color: const Color.fromRGBO(0, 0, 0, 0.04),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(VideocallPage.id);
                      },
                      child: circleIcon(
                        icon: Styles.video,
                        color: const Color.fromRGBO(0, 0, 0, 0.04),
                      ),
                    ),
                    circleIcon(
                      icon: Styles.person,
                      color: const Color.fromRGBO(0, 0, 0, 0.04),
                    ),
                    circleIcon(
                      icon: Styles.bell,
                      color: const Color.fromRGBO(0, 0, 0, 0.04),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                customRow(
                  text: "Color",
                  icon: Styles.circle,
                ),
                const Divider(),
                customRow(
                  text: "Emoji",
                  icon: Styles.hand,
                ),
                const Divider(),
                customRow(
                  text: "Nicknames",
                  icon: const Icon(
                    CupertinoIcons.chevron_right,
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "More actions",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(0, 0, 0, 0.35),
                  ),
                ),
                customRow(
                    text: "Search in Conversation",
                    icon: circleIcon(
                        icon: Styles.search,
                        color: const Color.fromRGBO(0, 0, 0, 0.04))),
                const Divider(),
                customRow(
                    text: "Create Group",
                    icon: circleIcon(
                        icon: Styles.person3,
                        color: const Color.fromRGBO(0, 0, 0, 0.04))),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Privacy",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(0, 0, 0, 0.35),
                  ),
                ),
                customRow(
                    text: "Ignore Messages",
                    icon: circleIcon(
                        icon: Styles.search,
                        color: const Color.fromRGBO(0, 0, 0, 0.04))),
                const Divider(),
                const SizedBox(
                  height: 55,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Notifications",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text(
                        "On",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 0.35)),
                      ),
                      Icon(CupertinoIcons.chevron_forward,
                          color: Color.fromRGBO(0, 0, 0, 0.35))
                    ],
                  ),
                ),
                const Divider(),
                customRow(text: "Block", icon: null),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
