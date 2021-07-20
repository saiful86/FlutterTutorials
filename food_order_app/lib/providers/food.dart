import 'package:flutter/foundation.dart';

class Food extends ChangeNotifier {

  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
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
