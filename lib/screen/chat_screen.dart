// ignore_for_file: avoid_print, prefer_const_constructors, avoid_unnecessary_containers, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:shopapp/controller/chat_controller.dart';

import '../chat/messages.dart';
import '../chat/new_message.dart';
import '../controller/chates_controller.dart';


class ChatScreen extends StatelessWidget {
   // ignore: prefer_const_constructors_in_immutables
   final ChatsController controller = Get.put(ChatsController());
   ChatScreen({Key? key}) : super(key: key);
//   @override
//   // ignore: library_private_types_in_public_api
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
  
//   @override
//   void initState() {
//     super.initState();
//     final fbm = FirebaseMessaging.instance;
//     fbm.requestPermission();
//     FirebaseMessaging.onMessage.listen((message) {
//       // ignore: avoid_print
//       print(message);
//       return;
//     });
//     FirebaseMessaging.onMessageOpenedApp.listen((message) {
//       print(message);
//       return;
//     });
//     fbm.subscribeToTopic('chat');
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Messages(),
            ),
            NewMessage(),
          ],
        ),
      ),
    );
  }
}
