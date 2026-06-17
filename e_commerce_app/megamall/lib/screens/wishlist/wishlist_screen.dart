import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/dummy_products.dart';
import '../../providers/wishlist_provider.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wishlistProvider =
        context.watch<WishlistProvider>();

    final wishlistProducts =
        dummyProducts.where((product) {
      return wishlistProvider
          .wishlistIds
          .contains(product.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Wishlist",
        ),
      ),
      body: wishlistProducts.isEmpty
          ? const Center(
              child: Text(
                "No Products In Wishlist",
              ),
            )
          : ListView.builder(
              padding:
                  const EdgeInsets.all(12),
              itemCount:
                  wishlistProducts.length,
              itemBuilder:
                  (context, index) {
                final product =
                    wishlistProducts[index];

                return Card(
                  child: ListTile(
                    leading: Image.asset(
                      product.image,
                      width: 60,
                    ),
                    title: Text(
                      product.name,
                    ),
                    subtitle: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                      children: [
                        Text(
                          "\$${product.price}",
                        ),
                        Text(
                          "⭐ ${product.rating}",
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        wishlistProvider
                            .toggleWishlist(
                          product.id,
                        );
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}