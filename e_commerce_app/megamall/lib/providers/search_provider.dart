import 'package:flutter/material.dart';

import '../data/dummy_products.dart';
import '../models/product_model.dart';

class SearchProvider extends ChangeNotifier {
  List<ProductModel> _results = [];

  List<ProductModel> get results => _results;

  void search(String query) {
    if (query.trim().isEmpty) {
      _results = [];
    } else {
      _results = dummyProducts.where((product) {
        return product.name
            .toLowerCase()
            .contains(query.toLowerCase());
      }).toList();
    }

    notifyListeners();
  }

  void clearSearch() {
    _results = [];
    notifyListeners();
  }
}