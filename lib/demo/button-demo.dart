import 'package:flutter/material.dart';

/// 项目名称：flutter-learn
/// 创建人：乐哥哥
/// 创建时间：2019-07-18 10:39

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 文字按钮
        FlatButton(
          onPressed: () {},
          child: Text('Button'),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        // 文字按钮
        FlatButton.icon(
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
          icon: Icon(Icons.add),
          label: Text('add'),
        ),
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
//          data: Theme.of(context).copyWith(
          data: ThemeData(
            buttonTheme: ButtonTheme.of(context).copyWith(
                buttonColor: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
                // 直角矩形
//              shape: BeveledRectangleBorder(
//                borderRadius: BorderRadius.circular(5),
//              ),
                // 圆角矩形
                shape: StadiumBorder()),
          ),
          child: RaisedButton(
            onPressed: () {},
            child: Text('Button'),
          ),
        ),
        SizedBox(width: 8),
        // 文字按钮
        RaisedButton.icon(
          onPressed: () {},
          splashColor: Colors.grey,
          icon: Icon(Icons.add),
//          color: Theme.of(context).accentColor,
////          textColor: Colors.white,
//          //效果同textColor: Colors.white,
//          textTheme: ButtonTextTheme.primary,
//          elevation: 0,
          label: Text('add'),
        ),
      ],
    );

    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
//          data: Theme.of(context).copyWith(
          data: ThemeData(
            buttonTheme: ButtonTheme.of(context).copyWith(
                buttonColor: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
                // 直角矩形
//              shape: BeveledRectangleBorder(
//                borderRadius: BorderRadius.circular(5),
//              ),
                // 圆角矩形
                shape: StadiumBorder()),
          ),
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            splashColor: Colors.grey,
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(width: 8),
        // 文字按钮
        OutlineButton.icon(
          onPressed: () {},
          splashColor: Colors.grey,
          icon: Icon(Icons.add),
//          color: Theme.of(context).accentColor,
////          textColor: Colors.white,
//          //效果同textColor: Colors.white,
//          textTheme: ButtonTextTheme.primary,
//          elevation: 0,
          label: Text('add'),
        ),
      ],
    );

    final Widget fixedWidthButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
          ),
          width: 160,
        )
      ],
    );

    final Widget expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          flex: 2,
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
          ),
        ),
      ],
    );

    final Widget buttonBarDemo = Theme(
      data: Theme.of(context).copyWith(
        buttonTheme: ButtonTheme.of(context).copyWith(
          padding: EdgeInsets.symmetric(horizontal: 32),
        ),
      ),
      child: ButtonBar(
        alignment: MainAxisAlignment.center,
        children: <Widget>[
          OutlineButton(
            onPressed: () {},
            child: Text('Button'),
          ),
          OutlineButton(
            onPressed: () {},
            child: Text('Button'),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedWidthButtonDemo,
            expandedButtonDemo,
            buttonBarDemo,

            // Column中Text和Row都没有间距
            // Button 在Row中没有间距,  在Column中有默认的间距 todo 怎么去掉呢
            Text('123'),
            SizedBox(height: 16, width: 16),
            Text('123'),
            FlatButton(
              child: Text('123'),
              onPressed: () {},
              splashColor: Colors.grey,
              padding: EdgeInsets.all(16),
//                textColor: Theme.of(context).accentColor,
            ),
            FlatButton(
              child: Text('123'),
              onPressed: () {},
              splashColor: Colors.grey,
            ),

            /* Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '123',
                    style: TextStyle(backgroundColor: Colors.orange),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '123',
                    style: TextStyle(backgroundColor: Colors.orange),
                  ),
                ],
              )*/
          ],
        ),
      ),
    );
  }
}
