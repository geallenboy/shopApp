import 'package:shop/pages/home/view.dart';
import 'package:shop/pages/mime/index.dart';
import 'package:shop/pages/cart/view.dart';
import 'package:shop/pages/goods_cate/index.dart';
import 'package:flutter/material.dart';

class PageIndex extends StatefulWidget {
  const PageIndex({Key? key}) : super(key: key);

  State<PageIndex> createState() => _PageIndexState();
}

class _PageIndexState extends State<PageIndex> {
  int _index_current = 0;

  final List _pageList = [
    const HomeView(),
    const GoodsCateIndex(),
    const CartIndex(),
    const MimeIndex(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_index_current],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index_current,
        onTap: (int index) {
          setState(() {
            _index_current = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "分类"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_travel_sharp), label: "购物车"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的")
        ],
        selectedItemColor: Colors.red[500],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
