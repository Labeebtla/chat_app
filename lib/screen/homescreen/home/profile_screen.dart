import 'package:chat_app/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  final profileController = TextEditingController();
  var pcontroller = Get.find<AuthController>();
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
            child: Text(
          '${pcontroller.usernameController.value}',
        )),
      ),
      body: Column(
        children: [
          const Center(
            child: CircleAvatar(
              radius: 60,
              child: Stack(
                children: [
                  Icon(
                    Icons.person,
                    size: 75,
                  ),
                  Positioned(
                      right: 0,
                      bottom: 50,
                      child: Icon(Icons.camera_alt_outlined))
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: TextFormField(
              controller: profileController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person_outline),
                  suffixIcon: const Icon(Icons.edit),
                  labelText: 'Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(
              Icons.person_add_alt_1,
              color: Colors.white,
            ),
            title: TextFormField(
              controller: profileController,
              decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.edit),
                  prefixIcon: const Icon(Icons.person_add_alt_1),
                  labelText: 'About',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(
              Icons.phone_android_rounded,
              color: Colors.white,
            ),
            title: TextFormField(
              controller: profileController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.edit),
                  prefixIcon: const Icon(Icons.phone_android_rounded),
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
        ],
      ),
    );
  }
}
