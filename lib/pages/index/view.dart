import 'dart:io';

import 'package:get/get.dart';
import 'package:shop/pages/home/view.dart';
import 'package:shop/pages/mine/index.dart';
import 'package:shop/pages/cart/index.dart';
import 'package:shop/pages/goods_cate/index.dart';
import 'package:flutter/material.dart';
import 'package:shop/utils/screenutil.dart';

import 'index.dart';

class IndexView extends GetView<IndexController> {
  const IndexView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.pages = [HomeView(), GoodsCateView(), CartView(), MimeView()];
    return Scaffold(
      body: PageView(
        controller: controller.controller,
        children: controller.pages,
        onPageChanged: (index) => _onJumpTo(index),
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: Container(
        child: Obx(() => BottomNavigationBar(
              backgroundColor: Colors.white,
              unselectedItemColor: Colors.black,
              selectedItemColor: Colors.redAccent,
              onTap: (index) => _onJumpTo(index),
              currentIndex: controller.currentIndex.value,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.grid_view), label: "分类"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.card_travel_sharp), label: "购物车"),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的")
              ],
            )),
      ),
    );
  }

  _onJumpTo(int index) {
    controller.controller.jumpToPage(index);
    controller.currentIndex.value = index;
  }
}
