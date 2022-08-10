// ignore_for_file: invalid_return_type_for_catch_error, avoid_single_cascade_in_expression_statements, prefer_final_fields, must_call_super

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shopapp/screen/login.dart';

import '../screen/home_page.dart';
class FirebaseController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
 
  Rxn<User> _firebaseUser = Rxn<User>();

  String? get user => _firebaseUser.value?.email;

  @override
  void onInit() {
    _firebaseUser.bindStream(_auth.authStateChanges());
  }

  void createUser(String email, password) async {
    await _auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) => Get.off(() => Login()))
        .catchError(
            (onError) => Get.snackbar('SomeThing is Wrong', onError.message));
  }

  void login(String email, password) async {
    await _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) => Get.off(() => HomePage()))
        .catchError(
            (onError) => Get.snackbar('SomeThing is Wrong', onError.message));
  }

  void signout() async {
    await _auth.signOut();
  }
}
