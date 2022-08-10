// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/controller/firebase_controller.dart';
import 'package:shopapp/screen/category_screen.dart';
import '../controller/cart_controller.dart';
import '../widget/category_products.dart';
import '../widget/catelog_products.dart';
import 'cart_screen.dart';
import 'chat_screen.dart';


class HomePage extends GetWidget<FirebaseController> {
  // final User user;
  final CartController cartcontroller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: const Text('Products'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              controller.signout();
            },
            icon: const Icon(
              Icons.logout_rounded,
            ),
          ),
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: <Widget>[
              CatelogProducts(type: "",sell: true,),
              // IconButton(
              //   onPressed: () => Get.to(() => CartScreen()),
              //   icon: const Icon(
              //     Icons.add_shopping_cart,
              //   ),
              // ),
            ],
          ),
        ),
      ),
     bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container( 
          decoration: const BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.all(Radius.circular(10))),
          // color: Colors.black26,
          height:45,
          child: Row( 

        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
          IconButton(
            iconSize: 30.0,
            padding: EdgeInsets.only(left: 20.0),
            icon: Icon(Icons.home),
            onPressed: ()=> Get.to(() => HomePage()),
          ),
          IconButton(
            iconSize: 30.0,
            padding: EdgeInsets.only(left: 20.0),
            icon: Icon(Icons.category),
            onPressed: ()=> Get.to(() => CategoryProduct()),
          ),
          IconButton(
            iconSize: 30.0,
            padding: EdgeInsets.only(right: 5.0),
            icon: Icon(Icons.person_outlined),
            onPressed: ()=> Get.to(() => CartScreen()),
          ),
          IconButton(
            iconSize: 30.0,
            padding: EdgeInsets.only(right: 10.0),
            icon: Icon(Icons.chat_rounded),
            onPressed: ()=> Get.to(() => ChatScreen()),
          ),
          IconButton(            
            iconSize: 30.0,
            padding: EdgeInsets.only(right: 15.0),
           icon: const Icon(
                  Icons.add_shopping_cart,
                ),
            onPressed: ()=> Get.to(() => CartScreen()),
          ),
        ]
          )
        )
     )
    );
  }
}
