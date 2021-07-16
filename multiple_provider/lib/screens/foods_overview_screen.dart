import 'package:flutter/material.dart';
import 'package:multiple_provider/providers/cart.dart';
import 'package:multiple_provider/widgets/badge.dart';
import 'package:provider/provider.dart';
import '../widgets/foods_grid.dart';

class FoodsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Order'),
        actions: [

          Consumer<Cart>(
            builder: (context,cart,chid)=>Badge(
              child:  IconButton(
                icon: Icon(Icons.shopping_cart),
                color: Colors.white,
                onPressed: () {},
              ),
              value: cart.itemCount.toString(),
              color: Colors.black,
            ),
          )
        ],
      ),
      body: FoodsGrid(),
    );
  }
}
