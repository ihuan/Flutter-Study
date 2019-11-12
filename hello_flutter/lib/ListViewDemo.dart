import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: new HomePage2(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        children: List.generate(10, (index) {
          return Card(child: Container(
            height: 100,
            color: Colors.greenAccent,
            child: Text('$index'),
          ),);
        }),
      ),
      backgroundColor: Colors.white,
    );
  }
}

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: 18,
        itemBuilder: (context, idx) {
          return Card(child: Container(
            height: 100,
            color: Colors.purpleAccent,
            child: Text('$idx'),
          ),);
        },
      ),
      backgroundColor: Colors.white,
    );
  }
}