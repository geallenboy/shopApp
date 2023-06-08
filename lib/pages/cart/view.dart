import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/pages/cart/index.dart';

class CartView extends GetWidget<CartController> {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('购物车'),
      ),
    );
  }
}
