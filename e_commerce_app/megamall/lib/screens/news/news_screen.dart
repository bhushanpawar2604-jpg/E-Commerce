import 'package:flutter/material.dart';

class NewsScreen
    extends StatelessWidget {
  const NewsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Latest News",
        ),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading:
                Icon(Icons.article),
            title: Text(
              "Big Sale Coming Soon",
            ),
          ),
          ListTile(
            leading:
                Icon(Icons.article),
            title: Text(
              "MegaMall New Features",
            ),
          ),
        ],
      ),
    );
  }
}