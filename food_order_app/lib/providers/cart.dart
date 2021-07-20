import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({this.id, this.title, this.quantity, this.price});
}

class Cart with ChangeNotifier {

  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  int get itemCount {
    return _items.length;
  }

  void addItem (
      String itemId,
      double price,
      String title
      ){

    if(_items.containsKey(itemId)){
      //Change quantity..
      _items.update(
          itemId,
              (existingCartItem) => CartItem(
            id:existingCartItem.id,
            title: existingCartItem.title,
            price: existingCartItem.price,
            quantity: existingCartItem.quantity + 1,
          )
      );
    }else{
      _items.putIfAbsent(
        itemId,
            () => CartItem(
          id: itemId,
          title: title,
          price: price,
          quantity: 1,
        ),
      );
    }

    notifyListeners();
  }

  removeItem(String itemId){
    _items.remove(itemId);
    notifyListeners();
  }


}