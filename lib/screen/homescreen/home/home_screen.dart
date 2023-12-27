// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:chat_app/screen/homescreen/home/appbar.dart';
import 'package:chat_app/screen/homescreen/home/drawer.dart';
import 'package:chat_app/screen/homescreen/home/tabbar.dart';
import 'package:chat_app/screen/homescreen/home/tabbarview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final scaffoldkey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          // key: scaffoldkey,
          drawer: drawer(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.black,
          body: Column(
            children: [
              appbar(),
              Expanded(
                child: Row(
                  children: [Tabbar(), tabbarview()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
