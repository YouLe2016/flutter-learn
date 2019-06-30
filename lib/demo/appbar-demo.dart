import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/demo/listview-demo.dart';

class AppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            debugPrint('Navigation button is pressed.');
          },
        ),
        title: Text('AppBarDemo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              debugPrint('Search button is pressed.');
            },
          ),
        ],
        brightness: Brightness.dark,
        elevation: 4.0, //默认4.0
      ),
      body: ListViewDemo(),
      backgroundColor: Colors.grey[100],
    );
  }
}
