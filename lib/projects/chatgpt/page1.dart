import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatGpt1 extends StatefulWidget {
  static const String id = 'pageChatGPT';
  const ChatGpt1({Key? key}) : super(key: key);

  @override
  State<ChatGpt1> createState() => _ChatGpt1State();
}

class _ChatGpt1State extends State<ChatGpt1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      backgroundColor: const Color(0xFF444654),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        toolbarHeight: 150,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 197, top: 80),
            child: Row(
              children: [
                Image(
                  image: AssetImage("assets/images/chatgpt/image1.png"),
                  width: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "What is UX Design?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF1E1E1E),
        width: 237,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 15),
              child: Container(
                height: 40,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 2, color: Colors.white),
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      CupertinoIcons.add,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "New Chat",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 20),
              child: Row(
                children: [
                  Image(
                    image: AssetImage("assets/images/chatgpt/Vector.png"),
                    width: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "What is UX Design",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 20),
              child: Row(
                children: [
                  Image(
                    image: AssetImage("assets/images/chatgpt/Vector.png"),
                    width: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Color Palettes",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 280,
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 20),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.trash,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Clear Conversation",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Upgrade to plus",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.dark_mode_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Dark Mode",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.update,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Updates and FAQs",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Log out",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Image(
                      image: AssetImage("assets/images/chatgpt/Avatar ChatGPT.png"),
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "UX design, or user experience design, refers\nto the process of designing products or\nservices that are intuitive, accessible, and\neasy to use for the end user. The goal of UX\ndesign is to create products and services that\nare useful, usable, and desirable, and that\nmeet the needs and expectations of the user.\n\n\n\nUX designers use a range of techniques and\ntools to understand the user's needs,\nbehaviors, and preferences, and to create\ndesigns that are tailored to those needs.\nThey may conduct user research, create\npersonas, develop wireframes and\nprototypes, conduct usability testing, and\nanalyze user feedback in order to improve the\nuser experience.",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Image(
                      image: AssetImage("assets/images/chatgpt/Avatar ChatGPT.png"),
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "UX design, or user experience design, refers\nto the process of designing products or\nservices that are intuitive, accessible, and\neasy to use for the end user. The goal of UX\ndesign is to create products and services that\nare useful, usable, and desirable, and that\nmeet the needs and expectations of the user.\n\n\n\nUX designers use a range of techniques and\ntools to understand the user's needs,\nbehaviors, and preferences, and to create\ndesigns that are tailored to those needs.\nThey may conduct user research, create\npersonas, develop wireframes and\nprototypes, conduct usability testing, and\nanalyze user feedback in order to improve the\nuser experience.",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 150,
        color: Colors.black26,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              FilledButton(
                style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(
                    Size(230, 40),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  backgroundColor: const MaterialStatePropertyAll(Colors.black12),
                  side: const MaterialStatePropertyAll(
                    BorderSide(
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(
                      CupertinoIcons.arrow_2_circlepath,
                      color: Color(0xFFFFFFFF),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Regenerate Response",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                height: 50,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF40414F),
                ),
                child: const TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                    enabledBorder: InputBorder.none,
                    suffixIcon: Image(
                      image: AssetImage("assets/images/chatgpt/sendicon.png"),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  autofocus: true,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 5),
                child: Row(
                  children: [
                    Text(
                      "ChatGPT Mar 14 Version ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Text(
                      "Free Research preview",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
