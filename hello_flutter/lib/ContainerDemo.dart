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
      body: Container(
        child: Text('Hello Flutter', style: TextStyle(fontSize: 25.0)),
        height: 100.0,
        width: 250.0,
        margin: EdgeInsets.only(top: 20, left: 20),
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.green,
        ),
      ),
      backgroundColor: Colors.grey,
      /*
      Column(
        children: <Widget>[
          Text(
            'Hello, flutter',
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.green,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          ),
          Container(
            /*
              如果父是Row: 宽度需要设置，高度无穷
              如果父是Column: 高度需要设置， 宽度无穷
             */
            height: 40.0,
            color: Colors.green,
          ),
        ],
      ),
      */
    );
  }
}
