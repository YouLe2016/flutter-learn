import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// 项目名称：flutter-learn
/// 创建人：乐哥哥
/// 创建时间：2019-07-19 11:18
class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  final DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
//    String dateTime = DateFormat.yMd().format(selectedDate);  // 7/19/2019
//    String dateTime = DateFormat.yMMMd().format(selectedDate); // Jul 19, 2019
    String dateTime = DateFormat.yMMMMd().format(selectedDate); // July 19, 2019
    debugPrint(dateTime);
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTimeDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Row(
                    children: <Widget>[
                      Text(dateTime),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2035),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
