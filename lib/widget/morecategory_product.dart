import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/morecategory_screeen.dart';

class MoreCategoryProduct extends StatelessWidget {
  const MoreCategoryProduct({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title:  Text(Get.arguments['first']),
        title: const Text("Category"),
      ),
      // body: MoreCategoryScreen(morecategory: Get.arguments['second']),
         body: MoreCategoryScreen(morecategory: Get.arguments),
    );
  }
}
