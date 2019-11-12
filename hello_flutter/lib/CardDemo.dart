import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
      home: new HomePage(),
    ));

/*
container 类
1. decoration: 要确保外面的color=nil
2. constraints: 如果没有指定长宽，它的大小会跟随child的大小适配，如果没有child，则根据parent适配

调试技巧
debugPaintSizeEnabled = true;
 */
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // debugPaintSizeEnabled = true;
    return Scaffold(
      appBar: new AppBar(
        title: Text('Home'),
      ),
      body: Row(
        children: <Widget>[
          Card(
            child: Text('Card Demo1'),
          ),
          // Card调节大小方法一
          Card(
            child: Container(
              width: 150,
              height: 100,
              child: Text(
                'Card Demo2',
                style: TextStyle(fontSize: 22.0),
              ),
            ),
          ),
          Card(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Text('Card Demo 3'),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}
