import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'demo/basic-demo.dart';
import 'demo/bottomNavigationBar-demo.dart';
import 'demo/drawer-demo.dart';
import 'demo/layout-demo.dart';
import 'demo/listview-demo.dart';
import 'demo/view-demo.dart';

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
        primarySwatch: Colors.yellow,
        // 水波纹效果
        highlightColor: Colors.white54, // 高亮颜色
        splashColor: Colors.white70, // 波纹颜色
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBarDemo'),
          brightness: Brightness.dark, //设置状态栏字体的颜色
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => debugPrint('Search button is pressed.'),
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
//            Icon(Icons.directions_bike, size: 128, color: Colors.black87)
            LayoutDemo(),
            ViewDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
