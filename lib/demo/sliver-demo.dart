import 'package:flutter/material.dart';
import 'package:flutter_learn/model/post.dart';

/// 项目名称：flutter-learn
/// 创建人：乐哥哥
/// 创建时间：2019-07-06 13:58
class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Flutter'),
            // 是否固定在顶部
//            pinned: true,
            // 是否往下滑动立刻显示Appbar
            floating: true,
            // 展开高度
            expandedHeight: 178,
            // 伸缩空间
            // flexible: adj. 柔韧的 / 易弯曲的 / 可变通的 / 适应力强的
            flexibleSpace: FlexibleSpaceBar(
              title: Text('您好, flutter'),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverListDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      SliverList(
        delegate: SliverChildBuilderDelegate(
              (context, index) {
            var post = posts[index];

//            return PhysicalModel(
//              color: Colors.transparent,
//              clipBehavior: Clip.antiAlias,
//              borderRadius: BorderRadius.circular(5),
//              child: Container(
//                child: Image.network(post.imageUrl, fit: BoxFit.cover),
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(20),
//                ),
//              ),
//            );

            return Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Material(
                elevation: 14,
                borderRadius: BorderRadius.circular(20),
                shadowColor: Colors.grey.withOpacity(0.5),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Image.network(post.imageUrl, fit: BoxFit.cover),
                      SizedBox(height: 4),
                      Text(
                        post.title,
                        style: Theme
                            .of(context)
                            .textTheme
                            .title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8),
                      Text(
                        post.author,
                        style: Theme
                            .of(context)
                            .textTheme
                            .subhead,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
            );
          },
          childCount: posts.length,
        ),
      );
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.9,
        ),
        delegate: SliverChildBuilderDelegate(
              (context, index) {
            var post = posts[index];
            return Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Image.network(post.imageUrl, fit: BoxFit.cover),
                  SizedBox(height: 4),
                  Text(
                    post.title,
                    style: Theme
                        .of(context)
                        .textTheme
                        .title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8),
                  Text(
                    post.author,
                    style: Theme
                        .of(context)
                        .textTheme
                        .subhead,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            );
          },
          childCount: posts.length,
        ),
      );
}
