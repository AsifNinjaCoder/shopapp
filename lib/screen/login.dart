// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/screen/signup.dart';

import '../controller/firebase_controller.dart';

class Login extends GetWidget<FirebaseController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(hintText: "Email"),
                controller: emailController,
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: "Password"),
                controller: passwordController,
                obscureText: true,
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                child: const Text("Log In"),
                onPressed: () {
                  controller.login(
                      emailController.text, passwordController.text);
                },
              ),
              // ignore: deprecated_member_use
              FlatButton(
                child: const Text("Sign Up"),
                onPressed: () {
                  Get.to(SignUp());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}