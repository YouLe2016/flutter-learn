import 'package:flutter/material.dart';

/// 项目名称：flutter-learn
/// 创建人：乐哥哥
/// 创建时间：2019-07-18 16:28

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;
  int _radioGroupB = 0;

  void _onAChanged(int value) {
    setState(() {
      _radioGroupA = value;
    });
  }

  void _onBChanged(int value) {
    setState(() {
      _radioGroupB = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile(
              value: 0,
              groupValue: _radioGroupB,
              onChanged: _onBChanged,
              title: Text('radio item A'),
              subtitle: Text('description'),
              selected: _radioGroupB == 0,
              secondary: Icon(Icons.filter_1),
              activeColor: Colors.black,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupB,
              onChanged: _onBChanged,
              selected: _radioGroupB == 1,
              title: Text('radio item B'),
              subtitle: Text('description'),
              secondary: Icon(Icons.filter_2),
              activeColor: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _radioGroupA,
                  onChanged: _onAChanged,
                ),
                Radio(
                  value: 1,
                  groupValue: _radioGroupA,
                  onChanged: _onAChanged,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
