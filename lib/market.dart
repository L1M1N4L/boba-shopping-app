import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:grocerystoreapp/cart_model.dart';
import 'package:grocerystoreapp/grocery_item_tile.dart';
import 'package:provider/provider.dart';

class Market extends StatefulWidget {
  const Market({super.key, required this.username});

  final String username;

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  
  @override
  Widget build(BuildContext context) {
    CurrencyFormat RupiahSettings = CurrencyFormat(
      symbol: 'Rp ',
      symbolSide: SymbolSide.left,
      thousandSeparator: '.',
      decimalSeparator: ',',
      symbolSeparator: ' ',
    );
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Header
          Padding(
            padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 10.0),
            child: Text(
              'Hello ${widget.username}',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),

          // SubHeader
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Let's brew up boba bliss for you.",
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            child: Divider(),
          ),

          Expanded(
            child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: value.shopItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      itemName: value.shopItems[index][0],
                      itemPrice: CurrencyFormatter.format(
                          value.shopItems[index][1], RupiahSettings),
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                      onPressed: () =>
                          Provider.of<CartModel>(context, listen: false)
                              .addItemToCart(index),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
