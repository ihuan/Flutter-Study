import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) {
          return Page1();
        },
        '/page2': (context) {
          return Page2();
        }
      },
    ));

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Page1'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.pushNamed(context, '/page2');
            // 传参数
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Page2(textData: '我是Page1传过来的',);
            })).then((value) {
              print('pop value is ' + value);
            });
          },
        ),
        body: Container(
          color: Colors.greenAccent,
        ));
  }
}

class Page2 extends StatelessWidget {

  final String textData;
  Page2({Key key, @required this.textData}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Page2'),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.pop(context, 'Page2 pop value');
        },),
        body: SizedBox.expand(
          child: Container(
            color: Colors.purpleAccent,
            child: Text(textData),
          ),
        ));
  }
}
