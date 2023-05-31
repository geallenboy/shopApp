import 'package:flutter/material.dart';
import 'package:shop/api/public.dart';

class HomeIndex extends StatefulWidget {
  const HomeIndex({Key? key}) : super(key: key);

  @override
  State<HomeIndex> createState() => _HomeIndexState();
}

class _HomeIndexState extends State<HomeIndex> {
  var data = [];
  var banner = [];
  var title = "home";

  @override
  void initState() {
    getIndex();
  }

  void getIndex() async {
    print('11111');
    try {
      var res = await getIndexData();
      if (res.code == 200) {
        setState(() {
          banner:
          res.data['banner'];
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("home"),
      ),
    );
  }
}
