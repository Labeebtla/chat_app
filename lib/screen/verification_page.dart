// ignore_for_file: avoid_unnecessary_containers

import 'package:chat_app/controller/auth_controller.dart';
import 'package:chat_app/screen/homescreen/register.dart';
import 'package:chat_app/screen/homescreen/home/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final AuthController _auth = AuthController();
  var controller = Get.put(AuthController());
  final RxBool passwordVisible = true.obs;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Let's Connect")),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              //emailadress
              TextFormField(
                controller: controller.emailAddressController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    labelText: 'EmailAddress ',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
              const SizedBox(
                height: 20,
              ),
              //password
              Obx(
                () => TextFormField(
                  obscureText: passwordVisible.value,
                  controller: controller.passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            passwordVisible.value = !passwordVisible.value;
                          },
                          icon: Icon(passwordVisible.value
                              ? Icons.visibility_sharp
                              : Icons.visibility_off_sharp)),
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              //otp varification
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: () {
                    signIp();
                  },
                  child: const Text('Sign In'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Create an'),
                  TextButton(
                      onPressed: () {
                        Get.to(() => RegisterPage());
                      },
                      child: Text('account'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void signIp() async {
    String email = controller.emailAddressController.text;
    String password = controller.passwordController.text;
    User? user = await _auth.signinWithEmailandpassword(email, password);
    if (user != null) {
      print('loginn');
      Get.offAll(() => HomeScreen());
    } else {
      print('some error');
    }
  }
}
