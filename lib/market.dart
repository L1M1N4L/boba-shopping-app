import 'package:flutter/material.dart';
import 'package:grocerystoreapp/cart_model.dart';
import 'package:grocerystoreapp/grocery_item_tile.dart';
import 'package:provider/provider.dart';

class Market extends StatelessWidget {
  const Market({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // good morning bro
          const Padding(
            padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 10.0),
            child: Text('Good morning,', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ),

          // Let's order fresh items for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Let's order fresh items for you",
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),

          // categories -> horizontal listview
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Fresh Items",
            ),
          ),

          Expanded(
            child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            );
          }))
          ),
        ],
      ),
    );
  }
}

