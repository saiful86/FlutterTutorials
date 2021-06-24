import 'package:flutter/material.dart';
import 'package:provide_share_data_to_other_sc/providers/food.dart';
import 'package:provider/provider.dart';

import '../screens/food_detail_screen.dart';

class FoodItem extends StatelessWidget {

/*
  final String id;
  final String title;
  final String imageUrl;
*/

  FoodItem();

  @override
  Widget build(BuildContext context) {

    final food = Provider.of<Food>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              FoodDetailScreen.routeName,
              arguments: food.id
            );
          },
          child: Image.asset(
            food.imageUrl,
            fit: BoxFit.fitHeight,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          leading: IconButton(
            icon: Icon(food.isFavorite?Icons.favorite:Icons.favorite_border),
            color: Theme.of(context).accentColor,
            onPressed: () {
              food.toggleFavoriteData();
            },
          ),
          title: Text(
            food.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
