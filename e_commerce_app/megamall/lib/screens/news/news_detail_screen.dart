import 'package:flutter/material.dart';

class NewsDetailScreen
    extends StatelessWidget {
  const NewsDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("News Detail"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          "News Details Here",
        ),
      ),
    );
  }
}