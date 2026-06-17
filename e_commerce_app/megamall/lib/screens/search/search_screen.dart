import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/search_provider.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final searchProvider =
        context.watch<SearchProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search Products",
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(16),
        child: Column(
          children: [

            TextField(
              onChanged: (value) {
                searchProvider.search(
                  value,
                );
              },
              decoration:
                  const InputDecoration(
                hintText:
                    "Search Product...",
                prefixIcon:
                    Icon(Icons.search),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Expanded(
              child:
                  ListView.builder(
                itemCount:
                    searchProvider
                        .results
                        .length,
                itemBuilder:
                    (
                      context,
                      index,
                    ) {
                  final product =
                      searchProvider
                          .results[index];

               return Card(
  child: ListTile(
    onTap: () {
      Navigator.pushNamed(
        context,
        '/product-detail',
        arguments: product,
      );
    },
    leading: Image.asset(
      product.image,
      width: 60,
    ),
    title: Text(product.name),
    subtitle: Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Text("\$${product.price}"),
        Text("⭐ ${product.rating}"),
      ],
    ),
  ),
);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}