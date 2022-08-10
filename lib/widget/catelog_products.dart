import '../controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/product_model.dart';

class CatelogProducts extends StatelessWidget {
  final CartController controller = Get.find();
  final String type;
  final bool sell;
  CatelogProducts({
    required this.type,
    Key? key, required this.sell,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: Product.products.length,
            itemBuilder: (BuildContext context, int ind) {
              // if(sell==Product.products[ind].sell)
              // {
              //   return CatelogProductCard(index: ind);
              // }
              if (type == Product.products[ind].category) {
                return CatelogProductCard(index: ind);
              }
              else {
                return const Text('');
              }
            }));
  }
}

class CatelogProductCard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final CartController cartController = Get.find();
  final int index;
  CatelogProductCard({
    Key? key,
    required this.index,
  }) : super(key: key);

//
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Material(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        // horizonal: 20,
        vertical: 8.0,
      ),
      child: InkWell(
        onTap: () =>
            Get.toNamed("/ProductDetails", arguments: Product.products[index]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //  color: Color.fromARGB(0, 132, 108, 94),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                Product.products[index].imageUrl,
              ),
            ),
            const SizedBox(
              width: 50,
              height: 50,
            ),
            Expanded(
              child: Text(
                Product.products[index].name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Expanded(
              child: Text('\u{20B9}${Product.products[index].price}'),
            ),
            IconButton(
              onPressed: () {
                cartController.addProducts(Product.products[index]);
              },
              icon: const Icon(
                Icons.add_circle,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
