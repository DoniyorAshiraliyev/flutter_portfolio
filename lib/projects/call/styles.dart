import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Styles {
  static const bell = Icon(
    CupertinoIcons.bell_fill,
    color: Colors.black,
    size: 17,
  );
  static const person = Icon(
    CupertinoIcons.person_alt,
    color: Colors.black,
  );
  static const video = Icon(
    CupertinoIcons.video_camera_solid,
    color: Colors.black,
  );
  static const phone = Icon(
    CupertinoIcons.phone_fill,
    color: Colors.black,
  );
  static const search = Icon(CupertinoIcons.search);
  static const person3 = Icon(CupertinoIcons.person_3_fill);
  static const hand = Icon(
    CupertinoIcons.hand_thumbsup_fill,
    color: Color.fromRGBO(5, 132, 254, 1),
  ); //background: rgba(5, 132, 254, 1);

  static const chat = Icon(
    CupertinoIcons.chat_bubble_fill,
    color: Colors.white,
  );
  static const camera = Icon(
    CupertinoIcons.camera_rotate_fill,
    color: Colors.white,
  );
  static const microphone = Icon(
    CupertinoIcons.mic_fill,
    color: Colors.white,
  );
  static const volume = Icon(
    CupertinoIcons.volume_down,
    color: Colors.white,
  );
  static const circle = Icon(
    CupertinoIcons.smallcircle_fill_circle_fill,
    color: Color.fromRGBO(5, 132, 254, 1),
  );
  static const phoneDown = Icon(
    CupertinoIcons.phone_down_fill,
    color: Colors.white,
  );
// static const browser = Icon(CupertinoIcons.);
}


Widget customRow({required String text, Widget? icon}) {
  return SizedBox(
    height: 45,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
        ),
        if (icon != null) icon
      ],
    ),
  );
}

Widget circleIcon({
  required Icon icon,
  required Color color,
  double radius = 40,
}) {
  return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius / 2),
      ),
      child: Center(child: icon));
}
