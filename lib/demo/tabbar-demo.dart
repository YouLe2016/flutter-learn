import 'package:flutter/material.dart';

/// TabBar
/// TabBarView
/// DefaultTabController
class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => debugPrint('Navigation button is pressed.'),
          ),
          title: Text('TabBarDemo'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => debugPrint('Search button is pressed.'),
            ),
          ],
          bottom: TabBar(
            // 未选中的颜色
            unselectedLabelColor: Colors.black38,
            // 选中时的颜色
            indicatorColor: Colors.black54,
            // 指示器的大小
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist, size: 128, color: Colors.black87),
            Icon(Icons.change_history, size: 128, color: Colors.black87),
            Icon(Icons.directions_bike, size: 128, color: Colors.black87)
          ],
        ),
      ),
    );
  }
}
