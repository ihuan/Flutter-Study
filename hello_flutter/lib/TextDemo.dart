import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: new HomePage(),
    ));

// Stateless Widget
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Home'),
      ),
      body: Row(
        children: <Widget>[
          Text(
            'Hello, flutter',
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.green,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic
            ),
          ),
        ],
      ),
    );
  }
}
