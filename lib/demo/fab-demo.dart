import 'package:flutter/material.dart';

/// 项目名称：flutter-learn
/// 创建人：乐哥哥
/// 创建时间：2019-07-18 10:43
class FloatingActionButtonDemo extends StatelessWidget {
  /// 图标
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: () {},
    backgroundColor: Colors.black54,
    child: Icon(Icons.add),
    // 直角矩形(菱形)FloatingActionButton
//    shape: BeveledRectangleBorder(
//      borderRadius: BorderRadius.circular(30),
//    ),
  );

  /// 图标+文字
  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
    onPressed: () {},
    backgroundColor: Colors.black54,
    icon: Icon(Icons.add),
//    shape: BeveledRectangleBorder(
//      borderRadius: BorderRadius.circular(30),
//    ),
    label: Text('add'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingAction ButtonDemo'),
      ),
      body: Text('FloatingAction ButtonDemo'),
//      floatingActionButton: _floatingActionButtonExtended,
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
