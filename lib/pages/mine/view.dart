import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'index.dart';

class MimeView extends GetView<MineController> {
  const MimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('mime'),
      ),
    );
  }
}
