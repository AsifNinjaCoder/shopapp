import 'package:flutter/material.dart';
import '../widget/cart_products.dart';
import '../widget/cart_total.dart';

class CartScreen extends StatelessWidget {
   CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Your Cart"),),
      body:CartProducts(),

      bottomNavigationBar: BottomAppBar(
        child: SizedBox( 
          height:100,
          child: Row(
            children: [ 
              const SizedBox(width: 100,),
              CartTotal(),
            ]
          ),
        )
      ),
    );
  }
}