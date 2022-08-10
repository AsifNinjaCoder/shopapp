import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/controller/cart_controller.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({Key? key}) : super(key: key);
  final CartController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                Get.arguments.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "\u{20B9}${Get.arguments.price}",
              style: const TextStyle(
                color: Color.fromARGB(255, 12, 12, 12),
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                Get.arguments.description,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
            const SizedBox(
              height: 170,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 150,
                    decoration: const BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                        onPressed: () => Get.back(),
                        child: const Text("Back Now")),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: const BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                        onPressed: () => controller.addProducts(Get.arguments),
                        child: const Text("Add Now")),
                  )
                ])
          ],
        ),
      ),
    );
  }
}
