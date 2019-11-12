import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: new HomePage2(),
    ));

class HomePage2 extends StatefulWidget {
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage2> {
  int selectedIndex = 0;
  List<Widget> bodyList = [
    Container(
      color: Colors.purpleAccent,
    ),
    Container(
      color: Colors.greenAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Home'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int idx) {
          print(idx);
          setState(() {
            selectedIndex = idx;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Colors.black26,
            ),
            title: Text(
              'Add',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_alarm,
              color: Colors.black26,
            ),
            title: Text(
              '闹铃',
              style: TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
      body: bodyList[selectedIndex],
    );
  }
}
