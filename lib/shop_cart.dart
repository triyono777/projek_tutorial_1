import 'package:flutter/material.dart';

class ShopCart extends StatefulWidget {
  const ShopCart({super.key});

  @override
  State<ShopCart> createState() => _ShopCartState();
}

class _ShopCartState extends State<ShopCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          child: Center(
              child: const Icon(
        Icons.shopping_cart,
        color: Colors.amber,
      ))),
    );
  }
}
