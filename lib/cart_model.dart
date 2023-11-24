import 'package:flutter/material.dart';
import 'package:currency_formatter/currency_formatter.dart';

class CartModel extends ChangeNotifier {
  CurrencyFormat RupiahSettings = CurrencyFormat(
    symbol: 'Rp ',
    symbolSide: SymbolSide.left,
    thousandSeparator: '.',
    decimalSeparator: ',',
    symbolSeparator: ' ',
  );

  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Lemon CatBoba", "20500", "assets/boba-yellow.gif", Colors.yellow],
    ["Watermelon CatBoba", "22000", "assets/boba-watermelon.gif", Colors.red],
    ["MatCat Boba", "32500", "assets/boba-matcha.gif", Colors.green],
    ["Luxurious Boba", "55000", "assets/boba-luxury.gif", Colors.indigo],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  get cartLength => _cartItems.length;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);

    notifyListeners();
  }

  void removeAllItemFromCart() {
    _cartItems.clear();
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return CurrencyFormatter.format(totalPrice, RupiahSettings).toString();
  }
}
