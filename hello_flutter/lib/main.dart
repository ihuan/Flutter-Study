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
      body: Card(),
    );
  }
}
