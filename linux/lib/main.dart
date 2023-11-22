import 'package:flutter/material.dart';
import 'package:grocerystoreapp/cart_model.dart';
import 'package:grocerystoreapp/intro.dart';
import 'package:grocerystoreapp/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(home: IntroScreen());
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
