import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/model/post.dart';

import 'post-show.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
//    return Text(posts[index].title);
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.network(posts[index].imageUrl),
              SizedBox(height: 16),
              Text(posts[index].title,
                  style: Theme.of(context).textTheme.title),
              Text(posts[index].author,
                  style: Theme.of(context).textTheme.subhead),
              SizedBox(height: 16)
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PostShow(post: posts[index]),
                  ));
                },
              ),
            ),
          )
        ],
      ),

      // todo:why 以下写法不行
      /*child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white.withOpacity(0.3),
          highlightColor: Colors.white.withOpacity(0.1),
          child: Column(
            children: <Widget>[
              Image.network(posts[index].imageUrl),
              SizedBox(height: 16),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.subhead,
              ),
              SizedBox(height: 16)
            ],
          ),
          onTap: () {
            debugPrint('InkWell...');
          },
        ),
      ),*/
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
