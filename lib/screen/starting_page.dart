// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:chat_app/screen/verification_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class startingPage extends StatelessWidget {
  const startingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    children: [
                      Center(child: Image.asset('asset/images.png')),
                      const Text('TextChat')
                    ],
                  ),
                )),
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Wrap(
                        spacing: 10,
                        children: List.generate(listOfFeature.length, (index) {
                          return Chip(
                            label: Text(listOfFeature[index]),
                            backgroundColor: Colors.transparent,
                          );
                        })),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Lets\n start\n Messaging.',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 500,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder()),
                          onPressed: () {
                            Get.to(() => const VerificationPage(),
                                transition: Transition.downToUp);
                          },
                          child: const Text('Start Messaging'),
                        ),
                      ),
                      const Text(
                        'Designed by mr_tk__',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

const listOfFeature = [
  'run',
  'appearance',
  'private',
  'public',
  'secure',
  'realest'
];
