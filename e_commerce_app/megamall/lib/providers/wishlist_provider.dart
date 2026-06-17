import 'package:flutter/material.dart';

class WishlistProvider extends ChangeNotifier {
  final List<String> _wishlistIds = [];

  List<String> get wishlistIds => _wishlistIds;

  bool isFavorite(String productId) {
    return _wishlistIds.contains(productId);
  }

  void toggleWishlist(String productId) {
    if (_wishlistIds.contains(productId)) {
      _wishlistIds.remove(productId);
    } else {
      _wishlistIds.add(productId);
    }

    notifyListeners();
  }
}