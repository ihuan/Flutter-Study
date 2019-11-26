import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
      home: new HomePage(),
    ));

class HomePage extends StatefulWidget {
  // State<StatefulWidget> createState() => HomePageState();
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final String host = 'https://jsonplaceholder.typicode.com/posts';
  List dataArry = [];

  @override
  void initState() {
    super.initState();
  }

  preparedData() {
    // todo:待完成
    http.get(host).then((response) {
      setState(() {
        dataArry = jsonDecode(response.body);
        print(dataArry.length);
      });
    });
  }

  preparedData1() async {
    var response = await http.get(host);
    print(response.body);
  }

  preparedData2() {
    return http.get(host);
  }

  @override
  Widget build(BuildContext context) {
    // preparedData();
    return Scaffold(
      appBar: new AppBar(
        title: Text('Home'),
      ),
      body: FutureBuilder(
        future: preparedData2(),
        builder: (context, snap) {
          if (!snap.hasData) {
            return Container();
          }
          List datas = jsonDecode(snap.data.body);
          return ListView.builder(
            itemCount: datas.length,
            itemBuilder: (context, idx) {
              var data = datas[idx];
              return ListTile(
                title: Text(data['title']),
                subtitle: Text(data['body']),
              );
            },
          );
        },
      ),
      /*
      body: ListView.builder(
        itemCount: dataArry.length,
        itemBuilder: (context, idx) {
          var data = dataArry[idx];
          return ListTile(title: Text(data['title']), subtitle: Text(data['body']),);
        },
      ),
      */
    );
  }
}
