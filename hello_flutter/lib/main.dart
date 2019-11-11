import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: new HomePage2(),
    ));

// Stateless Widget
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Home'),
        ),
        body: (Row(
          children: <Widget>[
            Container(
              color: Colors.red,
              width: 100.0,
              height: 100.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 100,
              width: 100,
              color: Colors.green,
            )
          ],
        )));
  }
}

// StatefulWidget 状态改变的时候，整个页面都会更新
class HomePage2 extends StatefulWidget {
  State<StatefulWidget> createState() => HomePage2State();
}

class HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.forward),
          onPressed: () {
            setState(() {
              print("状态被改变，整个页面已经被刷新...");
            });
          },
        ),
        appBar: new AppBar(
          title: Text('Home'),
        ),
        body: (Row(
          children: <Widget>[
            Container(
              color: getColor(),
              width: 100.0,
              height: 100.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 100,
              width: 100,
              color: getColor(),
            )
          ],
        )));
  }

  Color getColor() {
    return Color.fromRGBO(
        Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1);
  }
}
