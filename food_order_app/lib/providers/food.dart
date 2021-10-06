import 'package:flutter/foundation.dart';

class Food extends ChangeNotifier {

  String id;
  String title;
  String description;
  double price;
  String imageUrl;
  bool isFavorite;

  Food({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
    this.isFavorite = false,
  });

  toggleFavoriteData(){
    isFavorite = !isFavorite;
    notifyListeners();
  }

}
