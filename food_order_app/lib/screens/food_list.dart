import 'package:flutter/material.dart';
import 'package:food_order_app/providers/foods.dart';
import 'package:food_order_app/screens/add_item.dart';
import 'package:food_order_app/widgets/app_drawer.dart';
import 'package:food_order_app/widgets/user_food_item.dart';
import 'package:provider/provider.dart';

class FoodListScreen extends StatelessWidget {

  static const routeName = '/food-list';

  @override
  Widget build(BuildContext context) {

    final foodsData = Provider.of<Foods>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Foods'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddItem.routeName);
            },
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: foodsData.items.length,
          itemBuilder: (_, i) => Column(
            children: [
              UserFoodItem(foodsData.items[i]),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}