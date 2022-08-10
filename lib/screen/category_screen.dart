import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/widget/catelog_products.dart';

import '../models/category_model.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: Category.category.length,
        itemBuilder: (BuildContext ctx, ind) {
          return CatelogProductCard(index: ind);
        });
  }
}

class CatelogProductCard extends StatelessWidget {
  final int index;
  CatelogProductCard({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.zero,
        child: InkWell(
          onTap: () => Get.toNamed("/MoreCategory",arguments: Category.category[index].categoryproduct,),
              // arguments: {'first':Category.category[index].name,'second':Category.category[index].categoryproduct}),
          child: Card(
              shadowColor: Colors.black45,
              clipBehavior: Clip.antiAlias,
              elevation: 10.0,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Image.network(
                        Category.category[index].imageUrl),
                  ),
                  Text(Category.category[index].name),
                ],
              )),
        ),
      ),
    );
  }
}
