// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:shopapp/controller/firebase_controller.dart';

class SignUp extends GetWidget<FirebaseController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
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
                obscureText: true,
                controller: passwordController,
              ),
              // ignore: deprecated_member_use
              FlatButton(
                child: const Text("Sign Up"),
                onPressed: () {
                  controller.createUser(
                      emailController.text, passwordController.text);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}