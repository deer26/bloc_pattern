import 'package:bloc_patter/screen/cart_screen.dart';
import 'package:bloc_patter/screen/product_list_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: {
        "/": (context) => ProductListScreen(),
        "/cart": (context) => CartScreen(),
      },
      initialRoute: "/",
    );
  }
}
