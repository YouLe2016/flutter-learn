import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBoxDemo();
  }
}

class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
//        constraints: BoxConstraints.expand(width: 240, height: 270),
        constraints: BoxConstraints.tightFor(width: 240, height: 270),
        child: Container(
          color: Colors.purple,
        ),
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: Container(
          color: Colors.purple,
        ),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        // 除了背景和Positioned 之外的控件都会被设置
//        alignment: Alignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment(0.9, -0.9),
            child: Icon(Icons.local_airport, color: Colors.white),
            width: 200,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          ),
          Icon(Icons.ac_unit, color: Colors.white, size: 20),
          Container(
            child: Icon(Icons.brightness_2, size: 32, color: Colors.white),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: <Color>[
                    Colors.blue[200],
                    Colors.blue,
                  ],
                )),
          ),
          Positioned(
            child: Icon(
              Icons.beach_access,
              color: Colors.white,
              size: 46,
            ),
            right: 20,
            top: 50,
          )
        ],
      ),
    );
  }
}

class SizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconBadge(Icons.brightness_1),
        SizedBox(height: 20, width: 20),
        IconBadge(Icons.brightness_2, size: 64),
        SizedBox(height: 20, width: 20),
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
