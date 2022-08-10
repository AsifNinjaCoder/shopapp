import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/cart_controller.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
   CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=>Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             const Text('Total',
            style: TextStyle(
              fontSize: 24,
              fontWeight:FontWeight.bold,
            ),),
            const Text(' = ',
            style: TextStyle(
              fontSize: 24,
              fontWeight:FontWeight.bold,
            ),),
            Text('\u{20B9}${controller.listShoppingCartTotal}',
            style: const TextStyle(
              fontSize: 24,
              fontWeight:FontWeight.bold,
            ),),
          ],
        )
      ),
    );
  }
}
