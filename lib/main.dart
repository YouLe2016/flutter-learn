import 'package:flutter/material.dart';
import 'package:flutter_learn/model/post.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primaryColor: Colors.yellow
//          primarySwatch: Colors.white
          ),
    );
  }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
//    return Text(posts[index].title);
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16),
          Text(posts[index].title, style: Theme.of(context).textTheme.title),
          Text(posts[index].title, style: Theme.of(context).textTheme.subhead),
          SizedBox(height: 16)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('您好'),
        brightness: Brightness.light,
        elevation: 4.0, //默认4.0
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
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
