import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/dummy_categories.dart';
import '../../providers/category_provider.dart';

class CategoryScreen
    extends StatelessWidget {
  const CategoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryProvider =
        context.watch<
            CategoryProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Categories",
        ),
      ),
      body: ListView.builder(
        itemCount:
            dummyCategories.length,
        itemBuilder:
            (context, index) {
          final category =
              dummyCategories[index];

          return ListTile(
            leading: Image.asset(
              category.image,
              width: 50,
            ),
            title: Text(
              category.name,
            ),
            trailing:
                categoryProvider
                            .selectedCategory ==
                        category.name
                    ? const Icon(
                        Icons.check,
                      )
                    : null,
            onTap: () {
              categoryProvider
                  .selectCategory(
                category.name,
              );
            },
          );
        },
      ),
    );
  }
}