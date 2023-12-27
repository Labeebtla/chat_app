import 'package:chat_app/screen/verification_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat_app/screen/homescreen/home/profile_screen.dart';

Widget drawer() {
  return Drawer(
    backgroundColor: Colors.black,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(20))),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        children: [
          ListTile(
            onTap: () {
              Get.back();
            },
            leading: const Icon(Icons.backspace_outlined),
            title: const Text(
              'Settings',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CircleAvatar(
            radius: 40,
            child: Icon(
              Icons.person,
              size: 55,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'username',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(height: 20),
          const Divider(
            color: Colors.blueGrey,
            height: 1,
          ),
          const SizedBox(height: 10),
          ListView(
            shrinkWrap: true,
            children: List.generate(
                drawerIconLIst.length,
                (index) => ListTile(
                      onTap: () {
                        switch (index) {
                          case 0:
                            Get.to(() => ProfileScreen());
                            break;
                        }
                      },
                      leading: Icon(
                        drawerIconLIst[index],
                        color: Colors.white,
                      ),
                      title: drawerTextList[index],
                      titleTextStyle: const TextStyle(
                        color: Colors.white,
                      ),
                    )),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.blueGrey,
            height: 1,
          ),
          const ListTile(
            leading: Icon(
              Icons.mobile_friendly_rounded,
              color: Colors.white,
            ),
            title: Text('Invite a friend'),
            titleTextStyle: TextStyle(
              color: Colors.white,
            ),
          ),
          const Spacer(),
          ListTile(
            title: Text('Logout'),
            titleTextStyle: TextStyle(
              color: Colors.white,
            ),
            leading: GestureDetector(
              child: Icon(
                Icons.logout_outlined,
                color: Colors.white,
              ),
              onTap: () {
                FirebaseAuth.instance.signOut();
                Get.offAll(() => VerificationPage());
              },
            ),
          )
        ],
      ),
    ),
  );
}

const accountIcon = Icons.account_circle_outlined,
    friendIcon = Icons.mobile_friendly,
    notificationIcon = Icons.notifications,
    dataIcon = Icons.data_saver_on_outlined,
    helpIcon = Icons.help;
const account = 'account',
    friend = 'friend',
    notification = 'notification',
    data = 'data',
    help = 'help';
var drawerIconLIst = <IconData>[
  accountIcon,
  friendIcon,
  notificationIcon,
  dataIcon,
  helpIcon
];
var drawerlist = <String>[account, friend, notification, data, help];
var drawerTextList = drawerlist.map((text) => Text(text)).toList();
