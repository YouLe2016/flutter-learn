import 'package:flutter/material.dart';
import 'package:flutter_learn/model/post.dart';

/// 项目名称：flutter-learn
/// 创建人：乐哥哥
/// 创建时间：2019-07-09 09:36
class PostShow extends StatelessWidget {
  final Post post;

  PostShow({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: Column(
        children: <Widget>[
          Image.network(post.imageUrl),
          Container(
            padding: EdgeInsets.all(32),
            // todo:不知道干啥的
//            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(post.title, style: Theme.of(context).textTheme.title),
                Text(post.author, style: Theme.of(context).textTheme.subhead),
                SizedBox(height: 32),
                Text(
                  (post.title + post.author) * 10,
                  style: Theme.of(context).textTheme.body1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
