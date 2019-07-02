import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  _BottomNavigationBarDemoState createState() =>
      _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  var _currentIndex = 1;

  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      // 设置激活颜色
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      // items中的数量>=4个时,BottomNavigationBar的类型会发生变化
      // 需要设置type: BottomNavigationBarType.fixed
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text("Explore"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text("History"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text("List"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text("Mine"),
        ),
      ],
    );
  }
}
