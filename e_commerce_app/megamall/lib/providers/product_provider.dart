import 'package:flutter/material.dart';

import '../data/dummy_products.dart';
import '../models/product_model.dart';

class ProductProvider extends ChangeNotifier {

  final List<ProductModel> _products =
      dummyProducts;

  List<ProductModel> get products =>
      _products;

  List<ProductModel> get featuredProducts =>
      _products
          .where(
            (e) => e.isFeatured,
          )
          .toList();

  ProductModel getById(
    String id,
  ) {
    return _products.firstWhere(
      (e) => e.id == id,
    );
  }

  List<ProductModel> get electronics =>
      _products
          .where(
            (e) =>
                e.category ==
                "Electronics",
          )
          .toList();
}