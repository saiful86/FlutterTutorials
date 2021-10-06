import 'package:flutter/material.dart';
import 'package:food_order_app/providers/food.dart';
import 'package:food_order_app/providers/food.dart';
import 'package:food_order_app/providers/food.dart';
import 'package:food_order_app/providers/food.dart';
import 'package:food_order_app/providers/foods.dart';
import 'package:food_order_app/screens/edit_item.dart';
import 'package:provider/provider.dart';

class UserFoodItem extends StatelessWidget {

  /*final String itemId;
  final String title;
  final String imageUrl;*/

  final Food food;

 /* Food food = Food(id: id, title: title, description: description, price: price, imageUrl: imageUrl)
*/
  UserFoodItem(this.food, );


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(food.title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(food.imageUrl),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.of(context).pushNamed(EditItem.routeName,arguments: food);
              },
              color: Theme.of(context).primaryColor,
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {},
              color: Theme.of(context).errorColor,
            ),
          ],
        ),
      ),
    );
  }
}
