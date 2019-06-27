import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('您好'),
            elevation: 4.0, //默认4.0
          ),
          body: Hello()),
      theme: ThemeData(
//        primaryColor: Colors.yellow
          primarySwatch: Colors.yellow),
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
