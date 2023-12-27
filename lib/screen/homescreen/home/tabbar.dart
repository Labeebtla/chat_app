// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

Widget Tabbar() {
  return Container(
    child: RotatedBox(
      quarterTurns: 3,
      child: const TabBar(tabs: [
        Tab(
          text: 'chat',
        ),
        Tab(
          text: 'status',
        ),
        Tab(
          text: 'call',
        )
      ]),
    ),
  );
}
