import 'package:chat_app/screen/homescreen/home/drawer.dart';
import 'package:flutter/material.dart';

Widget appbar() {
  return Container(
    padding: const EdgeInsets.only(right: 12),
    color: Colors.white,
    height: 80,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            drawer();
          },
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100))),
            height: 80,
            width: 90,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                )),
          ),
        ),
        RichText(
            text: const TextSpan(children: [
          TextSpan(
              text: "Text chat\n",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black)),
          TextSpan(
              text: "    connecting..",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.black))
        ])),
        const CircleAvatar(
          radius: 30,
          child: Icon(
            Icons.person,
            size: 45,
          ),
        )
      ],
    ),
  );
}
