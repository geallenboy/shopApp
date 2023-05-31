import 'package:flutter/material.dart';

class WorkIndex extends StatefulWidget {
  const WorkIndex({Key? key}) : super(key: key);
  @override
  State<WorkIndex> createState() => _WorkIndexState();
}

class _WorkIndexState extends State<WorkIndex> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Text('Work'),
        ),
      ),
    );
  }
}
