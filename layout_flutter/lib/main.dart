import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        body: Row(
          children: <Widget>[
            Text(
              'Hello',
              textScaleFactor: 1.5,
            ),
            RaisedButton(
              child: Text('Button'),
              onPressed: () {},
            )
          ],
        ));
  }
}
