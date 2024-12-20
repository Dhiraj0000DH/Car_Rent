import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Welcome to cart!',
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.orange),
      ),
    );
  }
}
