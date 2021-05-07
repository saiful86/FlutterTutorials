import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/foods.dart';
import './food_item.dart';

class FoodsGrid extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final productsData = Provider.of<Foods>(context);
    final products = productsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => FoodItem(
            products[i].id,
            products[i].title,
            products[i].imageUrl,
          ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}