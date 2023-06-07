import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'index.dart';

class MimeView extends GetView<MimeController> {
  const MimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('mime'),
      ),
    );
  }
}
