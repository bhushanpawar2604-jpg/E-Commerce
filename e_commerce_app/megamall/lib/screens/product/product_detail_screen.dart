import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/product_model.dart';
import '../../providers/cart_provider.dart';

import '../../widgets/common/custom_button.dart';
import '../../widgets/product/product_image_slider.dart';
import '../../widgets/product/review_tile.dart';

import '../../data/dummy_reviews.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final product =
        ModalRoute.of(context)!
            .settings
            .arguments as ProductModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product Details",
        ),
      ),
    );  }
}