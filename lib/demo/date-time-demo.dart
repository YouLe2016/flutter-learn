import 'dart:async';

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
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate() async {
    debugPrint('onTap 1');
    final data = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2035),
    );

    debugPrint('onTap 2');
    if (data != null) {
      setState(() {
        debugPrint('data == ${DateFormat.yMMMMd().format(_selectedDate)}');
        _selectedDate = data;
      });
    } else {
      debugPrint('data == null');
    }

    debugPrint('onTap 3');
  }

  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _selectTime() async {
    final time = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (time != null) {
      setState(() {
        _selectedTime = time;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
//    String dateTime = DateFormat.yMd().format(selectedDate);  // 7/19/2019
//    String dateTime = DateFormat.yMMMd().format(selectedDate); // Jul 19, 2019
    String dateTime =
        DateFormat.yMMMMd().format(_selectedDate); // July 19, 2019

//    debugPrint(dateTime);
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
                  onTap: _selectDate,
                ),
                InkWell(
                  child: Row(
                    children: <Widget>[
                      Text(_selectedTime.format(context)),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                  onTap: _selectTime,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
