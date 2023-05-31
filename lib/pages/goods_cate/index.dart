import 'package:flutter/material.dart';

class GoodsCateIndex extends StatefulWidget {
  const GoodsCateIndex({Key? key}) : super(key: key);

  @override
  State<GoodsCateIndex> createState() => _GoodsCateState();
}

class _GoodsCateState extends State<GoodsCateIndex> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('商品分类'),
      ),
    );
  }
}
