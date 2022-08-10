import 'package:get/get.dart';
import 'package:shopapp/controller/firebase_controller.dart';
class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<FirebaseController>(FirebaseController(), permanent: true);
  }
}