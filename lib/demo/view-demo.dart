import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/model/post.dart';

import 'layout-demo.dart';

/// 项目名称：flutter-learn
///
/// 创建人：乐哥哥
///
/// 创建时间：2019-07-05 13:57
class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget gridItemBuilder(context, index) {
    var post = posts[index];
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Image.network(post.imageUrl, fit: BoxFit.cover),
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
    return Container(
      child: GridView.builder(
//        padding: EdgeInsets.symmetric(horizontal: 8),
        itemCount: posts.length,
        itemBuilder: gridItemBuilder,
        // 控制视图的显示
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int times) {
    List<Widget> source = <Widget>[
      IconBadge(Icons.ac_unit),
      IconBadge(Icons.beach_access),
      IconBadge(Icons.cake),
      IconBadge(Icons.directions_run),
      IconBadge(Icons.email),
      IconBadge(Icons.favorite),
      IconBadge(Icons.g_translate),
      IconBadge(Icons.history),
      IconBadge(Icons.image),
      IconBadge(Icons.ac_unit),
      IconBadge(Icons.beach_access),
      IconBadge(Icons.cake),
      IconBadge(Icons.directions_run),
      IconBadge(Icons.email),
      IconBadge(Icons.favorite),
      IconBadge(Icons.g_translate),
      IconBadge(Icons.history),
      IconBadge(Icons.image),
    ];
    return List.generate(
      times * source.length,
      (index) => source[index % source.length],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      maxCrossAxisExtent: 120,
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int times) {
    List<Widget> source = <Widget>[
      IconBadge(Icons.ac_unit),
      IconBadge(Icons.beach_access),
      IconBadge(Icons.cake),
      IconBadge(Icons.directions_run),
      IconBadge(Icons.email),
      IconBadge(Icons.favorite),
      IconBadge(Icons.g_translate),
      IconBadge(Icons.history),
      IconBadge(Icons.image),
      IconBadge(Icons.ac_unit),
      IconBadge(Icons.beach_access),
      IconBadge(Icons.cake),
      IconBadge(Icons.directions_run),
      IconBadge(Icons.email),
      IconBadge(Icons.favorite),
      IconBadge(Icons.g_translate),
      IconBadge(Icons.history),
      IconBadge(Icons.image),
    ];
    return List.generate(
      times * source.length,
      (index) => source[index % source.length],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    Post post = posts[index];
    return Stack(
//      alignment: Alignment(-0.9, -1),
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            post.imageUrl,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 8,
          bottom: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(post.title, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(post.author),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // 设置不自动归位
//      pageSnapping: false,
      // 倒置顺序
//      reverse: true,
      // 改变滚动方向
//      scrollDirection: Axis.vertical,
      // 页面滚动时的回调
      // 第一次显示时不会回调
      onPageChanged: (page) => debugPrint('page = $page'),
      controller: PageController(
        // 第一次显示的页面
        initialPage: 2,
        // 是否记录用户滚动到了哪一页
        // 设置了initialPage 属性后失效
//        keepPage: false,
        // 视图所占比率
        // 必须写成两位小数形式
        viewportFraction: 0.70,
      ),
      children: <Widget>[
        Container(
          color: Colors.brown,
          alignment: Alignment.center,
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey,
          alignment: Alignment.center,
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey,
          alignment: Alignment.center,
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
