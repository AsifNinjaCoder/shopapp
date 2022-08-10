import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/models/more_category.dart';
import 'package:shopapp/widget/catelog_products.dart';

import '../models/category_model.dart';
import 'Product_display_screen.dart';

class MoreCategoryScreen extends StatelessWidget {
  final List<MoreCategory> morecategory;
  const MoreCategoryScreen({required this.morecategory,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: Get.arguments.length,
        itemBuilder: (BuildContext ctx, ind) {
          return MoreCategoryCard(index: ind,morecategory: morecategory,);
        });
  }
}

class MoreCategoryCard extends StatelessWidget {
  final int index;
   final List<MoreCategory> morecategory;
   MoreCategoryCard({required this.index,required this.morecategory, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: EdgeInsets.all(4),
      child: InkWell(
         onTap: () => Get.to(ProductDisplay(type: morecategory[index].name)),
        child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Image.network(
                      morecategory[index].imageUrl),
                ),
                Text(morecategory[index].name),
              ],
            )),
      ),
    ));
  }
}
