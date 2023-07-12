import 'package:flutter/material.dart';

class SliverApp extends StatelessWidget {
  const SliverApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _SliverPageState();
}

class _SliverPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              backgroundColor: Colors.amber,
              title: Text('Kindacode.com'),
              expandedHeight: 30,
              collapsedHeight: 150,
            ),
            const SliverAppBar(
              backgroundColor: Colors.green,
              title: Text('Have a nice day'),
              floating: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Card(
                    margin: const EdgeInsets.all(15),
                    child: Container(
                      color: Colors.blue[100 * (index % 9 + 1)],
                      height: 80,
                      alignment: Alignment.center,
                      child: Text(
                        "Item $index",
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                  );
                },
                childCount: 1000, // 1000 list items
              ),
            ),
          ],
        ));
  }
}