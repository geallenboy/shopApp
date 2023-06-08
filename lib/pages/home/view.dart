import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'index.dart';

class HomeView extends GetWidget<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Obx(() => Text('${controller.name}${controller.banner}====>'))
          // Obx(() => Text('${controller.name}${controller.banner}====>')),
          ),
    );
  }
}
