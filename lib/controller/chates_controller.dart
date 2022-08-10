import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/state_manager.dart';

class ChatsController extends GetxController {
  void initState() {
    // super.initState();
    final fbm = FirebaseMessaging.instance;
    fbm.requestPermission();
    FirebaseMessaging.onMessage.listen((message) {
      // ignore: avoid_print
      print(message);
      return;
    });
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print(message);
      return;
    });
    fbm.subscribeToTopic('chat');
  }

  // void sendMessage(String message) async {
  //   // FocusManager.instance. primaryFocus?. unfocus();
  //   final user = FirebaseAuth.instance.currentUser;
  //   final userData = await FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(user?.uid)
  //       .get();
  //   FirebaseFirestore.instance.collection('chat').add({
  //     'text': message,
  //     'createdAt': Timestamp.now(),
  //     'userId': user!.uid,
  //     // 'username': userData.data()!['username'],
  //   });
  // }
}
