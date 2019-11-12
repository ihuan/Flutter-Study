import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: new HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Home'),
      ),
      // 方法二
      body: GridView.builder(
        gridDelegate:
            // 固定宽度
            SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150, childAspectRatio: 2 / 3),
        itemBuilder: (context, idx) {
          return Card(
            child: Container(
              width: 500,
              height: 500,
              color: Colors.greenAccent,
              child: Text('$idx'),
            ),
          );
        },
      ),
      /*
      // 方法一
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(30, (idx) {
          return Card(
            child: Container(
              width: 500,
              height: 500,
              color: Colors.greenAccent,
              child: Text('$idx'),
            ),
          );
        }),
      ),
      */
      backgroundColor: Colors.white,
    );
  }
}
