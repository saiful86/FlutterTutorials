import 'package:flutter/material.dart';
import '../models/food.dart';

class Foods extends ChangeNotifier{

  List<Food> _items = [
    Food(
      id: 'p1',
      title: 'Burger',
      description: 'A Burger - A nice food!',
      price: 29.99,
      imageUrl:'assets/images/burger.jpg',
    ),
    Food(
      id: 'p2',
      title: 'KFC',
      description: 'A nice pair of Food.',
      price: 59.99,
      imageUrl:'assets/images/kfc.webp',
    ),
    Food(
      id: 'p3',
      title: 'Chicken Fry',
      description: 'A Chicken - A nice food!',
      price: 19.99,
      imageUrl:'assets/images/chicken.webp',
    ),
    Food(
      id: 'p4',
      title: 'Pizza',
      description: 'A Pizza - A nice food!',
      price: 49.99,
     imageUrl:'assets/images/pizza.jpg',
    ),
    Food(
      id: 'p4',
      title: 'Sandwich',
      description: 'A Sandwich - A good food.',
      price: 49.99,
      imageUrl:'assets/images/sandwich.jpg',
    ),
  ];

  List<Food> get items {
    return [..._items];
  }

  Food findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addFood(Food value) {
     _items.add(value);
    //notifyListeners();
  }
}
