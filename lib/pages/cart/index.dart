import 'package:flutter/material.dart';

class CartIndex extends StatefulWidget {
  const CartIndex({Key? key}) : super(key: key);

  @override
  State<CartIndex> createState() => _CartState();
}

class _CartState extends State<CartIndex> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('购物车'),
      ),
    );
  }
}
