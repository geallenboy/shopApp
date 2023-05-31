import 'package:flutter/material.dart';

class MimeIndex extends StatefulWidget {
  const MimeIndex({Key? key}) : super(key: key);

  @override
  State<MimeIndex> createState() => _MimeIndexState();
}

class _MimeIndexState extends State<MimeIndex> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Text('Mime'),
        ),
      ),
    );
  }
}
