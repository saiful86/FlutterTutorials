import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/foods.dart';
import './food_item.dart';

class FoodsGrid extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final foodsData = Provider.of<Foods>(context);
    final foods = foodsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: foods.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider(

          create: (_)=>foods[i],
          child:  FoodItem (),

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