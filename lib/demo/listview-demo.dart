import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/model/post.dart';

class ListViewDemo extends StatelessWidget {
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
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
