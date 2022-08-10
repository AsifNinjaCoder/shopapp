import 'package:flutter/material.dart';
import '../screen/category_screen.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white54,
        appBar: AppBar(
          title: const Text('Category'),
        ),
        body: const CategoryScreen(),
    );
  }
}
