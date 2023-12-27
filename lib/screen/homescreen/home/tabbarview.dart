import 'package:chat_app/screen/homescreen/chat/chat_components.dart';
import 'package:chat_app/screen/homescreen/status/status.dart';
import 'package:flutter/material.dart';

Widget tabbarview() {
  return Expanded(
    child: TabBarView(
      children: [
        Container(
          color: Colors.white,
          child: ChatComponents(),
        ),
        Container(
          color: Colors.white,
          child: const StatusComponent(),
        ),
        Container(
          color: Colors.blue,
        )
      ],
    ),
  );
}
