import 'package:flutter/material.dart';

/// 项目名称：flutter-learn
/// 创建人：乐哥哥
/// 创建时间：2019-07-18 10:45
class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currentItem = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButtonDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_currentItem),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem(value: 'home', child: Text('home')),
                    PopupMenuItem(value: 'category', child: Text('category')),
                    PopupMenuItem(value: 'mine', child: Text('mine')),
                  ],
                  onSelected: (value) {
                    debugPrint(value);
                    setState(() {
                      _currentItem = value;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
