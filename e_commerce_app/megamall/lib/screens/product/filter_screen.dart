import 'package:flutter/material.dart';

class FilterScreen
    extends StatefulWidget {
  const FilterScreen({
    super.key,
  });

  @override
  State<FilterScreen> createState() =>
      _FilterScreenState();
}

class _FilterScreenState
    extends State<FilterScreen> {

  double maxPrice = 500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Filter")),
      body: Padding(
        padding:
            const EdgeInsets.all(16),
        child: Column(
          children: [

            Text(
              "Max Price : \$${maxPrice.toInt()}",
            ),

            Slider(
              value: maxPrice,
              min: 0,
              max: 1000,
              onChanged: (value) {
                setState(() {
                  maxPrice = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}