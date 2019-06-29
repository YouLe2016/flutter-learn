import 'package:flutter/material.dart';
import 'package:flutter_learn/demo/listview-demo.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 隐藏右上角debug标签
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow
      ),
    );
  }
}

class Home extends StatelessWidget {
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
        title: Text('您好'),
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

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.black87),
      ),
    );
  }
}
