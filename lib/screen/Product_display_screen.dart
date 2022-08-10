import 'package:flutter/material.dart';

import '../widget/catelog_products.dart';

class ProductDisplay extends StatelessWidget {
  final String type;
  const ProductDisplay({required this.type,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: <Widget>[
              CatelogProducts(type: type,sell: false,),
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
    );

  }
}