import 'package:flutter/material.dart';

import '../models/cart_item_model.dart';
import '../models/product_model.dart';

class CartProvider extends ChangeNotifier {
  final List<CartItemModel> _items = [];

  List<CartItemModel> get items => _items;

  int get itemCount => _items.length;

  double get totalPrice {
    double total = 0;

    for (var item in _items) {
      total += item.totalPrice;
    }

    return total;
  }

  void addToCart(ProductModel product) {
    final index = _items.indexWhere(
      (item) => item.product.id == product.id,
    );

    if (index >= 0) {
      _items[index].quantity++;
    } else {
      _items.add(
        CartItemModel(
          product: product,
          quantity: 1,
        ),
      );
    }

    notifyListeners();
  }

  void removeFromCart(String productId) {
    _items.removeWhere(
      (item) => item.product.id == productId,
    );

    notifyListeners();
  }

  void increaseQuantity(String productId) {
    final item = _items.firstWhere(
      (item) => item.product.id == productId,
    );

    item.quantity++;

    notifyListeners();
  }

  void decreaseQuantity(String productId) {
    final item = _items.firstWhere(
      (item) => item.product.id == productId,
    );

    if (item.quantity > 1) {
      item.quantity--;
    }

    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}