import 'package:flutter/material.dart';

class SortScreen
    extends StatelessWidget {
  const SortScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Sort")),
      body: ListView(
        children: const [

          ListTile(
            title:
                Text("Price Low To High"),
          ),

          ListTile(
            title:
                Text("Price High To Low"),
          ),

          ListTile(
            title:
                Text("Highest Rating"),
          ),
        ],
      ),
    );
  }
}