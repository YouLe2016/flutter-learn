import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero, //防止状态栏没有颜色
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              '乐哥哥',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            accountEmail: Text(
              '270628297@qq.com',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              // 图片没有变成圆角
//                  child: Image.network('https://b-ssl.duitang.com/uploads/item/201504/19/20150419H0558_NJU3B.jpeg'),
              backgroundImage: NetworkImage(
                  'https://b-ssl.duitang.com/uploads/item/201504/19/20150419H0558_NJU3B.jpeg'),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2668764066,1478918522&fm=26&gp=0.jpg'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.yellow[200], BlendMode.colorBurn),
              ),
            ),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.end),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.end),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.end),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}

/*
DrawerHeader(
  child: Text('header'),
  decoration: BoxDecoration(color: Colors.grey[200]),
),
 */

/*
drawer: Container(
          color: Colors.white,
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text("This is drawer.")],
          ),
        )),
 */
