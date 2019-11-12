import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: new HomePage(),
    ));

class HomePage extends StatelessWidget {
  final String bannerImg =
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573548186542&di=8ec4a6fc49d1a266845a18ffe9431830&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FetqmQabSGrqHXhTvzaS91gV006NWCPDnEgLHRoAVony8E1543979039684.png';

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
