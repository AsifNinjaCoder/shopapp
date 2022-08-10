import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/root.dart';
import 'package:shopapp/screen/morecategory_screeen.dart';
import 'package:shopapp/screen/product_details.dart';
import 'package:shopapp/widget/catelog_products.dart';
import 'package:shopapp/widget/morecategory_product.dart';
import 'bindings/firebase_binding.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends GetMaterialApp {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AuthBinding(),
      getPages: [
        GetPage(name: '/ProductDetails', page: ()=> ProductDetail()),
        GetPage(name: '/MoreCategory', page: ()=>  MoreCategoryProduct()),
        // GetPage(name: '/CatelogProducts', page: ()=>  CatelogProducts()),
        
      ],
      home: Root(),
    );
  }
}
