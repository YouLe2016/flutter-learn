import 'package:flutter/material.dart';

import 'button-demo.dart';
import 'fab-demo.dart';
import 'popupMenuButton-demo.dart';

/// 项目名称：flutter-learn
/// 创建人：乐哥哥
/// 创建时间：2019-07-16 09:41
class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Components'),
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: "PopupMenuButton", page: PopupMenuButtonDemo()),
          ListItem(title: "Button", page: ButtonDemo()),
          ListItem(
            title: "FloatingActionButton",
            page: FloatingActionButtonDemo(),
          ),
        ],
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
