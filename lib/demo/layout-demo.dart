import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizeBoxDemo();
  }
}

//class StackDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Stack(
//      children: <Widget>[
//        Container(
//
//        ),
//      ],
//    );
//  }
//}

class SizeBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconBadge(Icons.brightness_1),
        SizedBox(height: 20, width: 20),
        IconBadge(Icons.brightness_2, size: 64),
        SizedBox(height: 30, width: 20),
        IconBadge(Icons.brightness_3),
      ],
    );
  }
}

class RowColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      child: Row(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
//        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(Icons.beach_access, size: 64),
          IconBadge(Icons.brightness_1),
        ],
      ),
    );
  }
}

/// 图标徽章
class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      // 设置单个控件的位置
//      alignment: Alignment(0, -1),
      alignment: Alignment.center,
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Colors.blue,
    );
  }
}
