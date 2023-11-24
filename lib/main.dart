import 'package:flutter/material.dart'; //Package
import 'package:grocerystoreapp/cart_model.dart'; //Page
import 'package:grocerystoreapp/intro.dart'; // Page
import 'package:provider/provider.dart'; //Package

// Run Application
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(home: IntroScreen());
  // }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroScreen(),
      ),
    );
  }
}
