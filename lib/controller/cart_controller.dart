import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/product_model.dart';

class CartController extends GetxController {
  final _products = {}.obs;
   int offervalue = 0;
  final List<String> coupon = ['New50', 'FirstMonth', 'BlackFriday'];
  void addProducts(Product product) {
    if (_products.containsKey(product)) {
      Get.snackbar(
        "Product Already Added",
        "",
        snackPosition: SnackPosition.TOP,
        duration: const Duration(milliseconds: 900),
        backgroundColor: Colors.white,
      );
    } else {
      _products[product] = 1;
      Get.snackbar(
        "Product Added",
        "you have added One More Item In Your Cart",
        snackPosition: SnackPosition.TOP,
        duration: const Duration(milliseconds: 900),
        backgroundColor: Colors.white,
      );
    }
  }

  void addProductsQuantity(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    // Get.snackbar(
    //   "Product Added",
    //   "you have added One More Item In Your Cart",
    //   snackPosition: SnackPosition.TOP,
    //   duration: const Duration(milliseconds:700 ),
    //   backgroundColor: Colors.white,
    // );
  }

  void redemoffer(String str) {
    if (coupon.contains(str)) {
      offervalue = 50;
    }
  }

  get products => _products;
  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();
  get listShoppingCartTotal => _products.isNotEmpty
      ? _products.entries
          .map((product) => (product.key.price! * product.value)-offervalue)
          .toList()
          .reduce((value, element) => value + element)
          .toStringAsFixed(2)
      : 'isEmty';

  // ignore: non_constant_identifier_names
  //
}
