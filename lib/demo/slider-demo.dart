import 'package:flutter/material.dart';

/// 项目名称：flutter-learn
/// 创建人：乐哥哥
/// 创建时间：2019-07-19 10:55
class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderItemA = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_sliderItemA.toString()),
                Slider(
                  value: _sliderItemA,
                  activeColor: Theme.of(context).accentColor,
                  min: 0,
                  max: 10,
                  // 分成多少份
                  // division: n. 分歧 / 除 / 部分 / 部门
                  divisions: 10,
                  label: _sliderItemA.toInt().toString(),
                  inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),
                  onChanged: (value) {
                    setState(() {
                      _sliderItemA = value;
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
