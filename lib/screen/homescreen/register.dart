// ignore_for_file: avoid_unnecessary_containers

import 'package:chat_app/controller/auth_controller.dart';
import 'package:chat_app/screen/homescreen/home/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final AuthController _auth = AuthController();
  var controller = Get.put(AuthController());
  final RxBool passwordVissible = true.obs;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Register here")),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              TextFormField(
                controller: controller.usernameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    labelText: 'username ',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
              const SizedBox(
                height: 20,
              ),

              TextFormField(
                controller: controller.emailAddressController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
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
                  obscureText: passwordVissible.value,
                  controller: controller.passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            passwordVissible.value = !passwordVissible.value;
                          },
                          icon: Icon(passwordVissible.value
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
                    signUp();
                  },
                  child: const Text('Sign Up'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void signUp() async {
    String username = controller.usernameController.text;
    String email = controller.emailAddressController.text;
    String password = controller.passwordController.text;
    User? user = await _auth.signupEmailandpassword(email, password);
    if (user != null) {
      print('user is sucessfully created');
      Get.offAll(() => HomeScreen());
    } else {
      print('some error');
    }
  }
}
