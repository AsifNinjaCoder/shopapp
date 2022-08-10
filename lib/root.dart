// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/controller/firebase_controller.dart';
import 'package:shopapp/screen/home_page.dart';

import 'screen/login.dart';



class Root extends GetWidget<FirebaseController> {
  @override
  Widget build(BuildContext context) {
    return Obx(()
    {
      return (Get.find<FirebaseController>().user !=null?  HomePage(): Login());
    }
    );
  }
}