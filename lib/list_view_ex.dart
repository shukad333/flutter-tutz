import 'package:flutter/material.dart';

class ListViewEx extends StatelessWidget {

  final List _posts = [
    'shuhail','noooru','Litchi',"Computer",'CPU',"Dart is tard"
  ];

  final List stories = ['Story 1','Story 2','Story 3','Story 4','Story 5'];
  ListViewEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(scrollDirection:Axis.horizontal,
                itemCount:stories.length,
                itemBuilder: (context,index){
              return Circle(name: stories[index]);
            }),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context,index) {
                return Grid(name: _posts[index]);
            }
            ),
          ),
        ],
      ),
    );
  }
}

class Grid extends StatelessWidget {
  final String name;
  const Grid({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      height: 200,
      color: Colors.black12,
        child: Center(
          child: Text(name),
        ),
    ),
    );
  }
}

class Circle extends StatelessWidget {
  final String name;
  const Circle({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 100,
      width: 100,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.deepPurple
      ),
      child: Text(name),
    ),
    );
  }
}


