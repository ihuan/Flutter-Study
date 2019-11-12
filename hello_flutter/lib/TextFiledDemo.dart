import 'package:flutter/material.dart';

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
    // 回调 onEditingComplete 方法时候，获取其文本
    TextEditingController txtController = new TextEditingController();

    var textField = TextField(
      controller: txtController,
      decoration: new InputDecoration(
          labelText: '姓名',
          icon: Icon(Icons.calendar_today),
          hintText: '请输入姓名',
          helperText: '有字符数字构成',
          // 调整鼠标聚焦
          suffix: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
          )
          // suffix: Icon(Icons.close),
          // suffixIcon: Icon(Icons.remove),
          ),
      onChanged: (text) {
        print('onChanged:' + text);
      },
      onEditingComplete: () {
        print('onEditingComplete');
        print(txtController.text);
      },
      onSubmitted: (text) {
        print('onSubmitted' + text);
      },
    );

    return Scaffold(
      appBar: new AppBar(
        title: Text('Home'),
      ),
      body: textField,
      backgroundColor: Colors.white,
    );
  }
}
