import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
  final String id;
  final String name;
  final double price;
  final String description;
  final String imageUrl;
  bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
    this.isFavorite = false,
  });

  toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
