// ignore_for_file: non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class ChatController extends GetxController{
  
   void sendMessage(String message) async {
    FocusManager.instance. primaryFocus?. unfocus();
    final user = FirebaseAuth.instance.currentUser;
    final userData = await FirebaseFirestore.instance.collection('users').doc(user?.uid).get();
    FirebaseFirestore.instance.collection('chat').add({
      'text': message,
      'createdAt': Timestamp.now(),
      'userId': user!.uid,
      // 'username': userData.data()!['username'],
    });
    // _controller.clear();
  }
}
