import 'package:flutter/material.dart';

/// 项目名称：flutter-learn
/// 创建人：乐哥哥
/// 创建时间：2019-07-18 16:08

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _checkboxA = true;
  bool _checkboxB = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _checkboxA,
              title: Text('checkbox item A'),
              subtitle: Text('description'),
              secondary: Icon(Icons.bookmark),
              selected: _checkboxA,
              onChanged: (value) {
                debugPrint(value.toString());
                setState(() {
                  _checkboxA = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  activeColor: Colors.black,
                  value: _checkboxB,
                  onChanged: (value) {
                    debugPrint(value.toString());
                    setState(() {
                      _checkboxB = value;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
