// ignore_for_file: non_constant_identifier_names

import 'package:chat_app/screen/homescreen/chat/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget ChatComponents() {
  // ignore: avoid_unnecessary_containers
  return Container(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Get.to(() => const ChatScreen());
                },
                leading: const CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.person,
                    size: 45,
                  ),
                ),
                title: const Text('name'),
                subtitle: const Text('message'),
                trailing: const Text('online'),
              ),
            );
          }),
    ),
  );
}
