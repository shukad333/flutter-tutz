import 'dart:math';

import 'package:flutter/material.dart';

class Pullrefresh extends StatefulWidget {
  const Pullrefresh({Key? key}) : super(key: key);

  @override
  State<Pullrefresh> createState() => _PullrefreshState();
}

class _PullrefreshState extends State<Pullrefresh> {
  List<String> nos = NumberGenerator().numbers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pull"),),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: ListView.builder(
      itemCount: nos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(nos[index]),
          );
        },),
    ),
    );
  }

  Future<void> _refresh() async {

    List<String> freshNumbers = await NumberGenerator().slowNumbers();
    setState(() {
      nos = freshNumbers;
    });

  }
}

class NumberGenerator {
  Future<List<String>> slowNumbers() async {
    return Future.delayed(const Duration(milliseconds: 1000), () => numbers,);
  }

  List<String> get numbers => List.generate(5, (index) => number);


  String get number => Random().nextInt(99999).toString();
}
