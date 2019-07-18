import 'package:flutter/material.dart';

/// 项目名称：flutter-learn
/// 创建人：乐哥哥
/// 创建时间：2019-07-09 10:26
class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        // 覆盖所有主题的样式
//        data: ThemeData.dark(),
        // 覆盖特定主题的样式
        data: Theme.of(context).copyWith(primaryColor: Colors.black),
//        child: ThemeDemo(),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              TextFieldDemo(),
              RegisterDemo(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterDemo extends StatefulWidget {
  @override
  _RegisterDemoState createState() => _RegisterDemoState();
}

class _RegisterDemoState extends State<RegisterDemo> {
  final _registerFormKey = GlobalKey<FormState>();
  String _username, _password;
  bool _autoValidate = false;

  _submitRegisterForm() {
    if (_registerFormKey.currentState.validate()) {
      _registerFormKey.currentState.save();
      debugPrint('username: $_username, password: $_password');
      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text('registering...')),
      );
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: "",
            ),
            onSaved: (value) {
              _username = value;
            },
            validator: _validateUsername,
            autovalidate: _autoValidate,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: "",
            ),
            // 显示为密码形式
            // obscure: adj. 不确定的 / 昏暗的 / 晦涩的，不清楚的 / 隐蔽的
            obscureText: true,
            onSaved: (value) {
              _password = value;
            },
            validator: _validatePassword,
            autovalidate: _autoValidate,
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            // raised: adj. 凸起的 / 扬起的 / 升高的 / 有浮雕的
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              elevation: 0,
              onPressed: _submitRegisterForm,
            ),
          )
        ],
      ),
    );
  }

  String _validateUsername(String value) {
    if (value.isEmpty) {
      return "Username is required.";
    }
    return null;
  }

  String _validatePassword(String value) {
    if (value.isEmpty) {
      return "Username is required.";
    }
    return null;
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      // 键盘输入过程中触发的回调
//      onChanged: (value) {
//        debugPrint('onChanged: $value');
//      },
      // 按下确认键触发的回调
      onEditingComplete: () {
        debugPrint('onEditingComplete');
      },
      onSubmitted: (value) {
        debugPrint('onSubmitted: $value');
      },
      controller: _textEditingController,
      decoration: InputDecoration(
        // 右侧图标
        icon: Icon(Icons.supervised_user_circle),
        // 标题
        labelText: '用户名:',
        // 提示语
        hintText: '长度不小于8位',
        // 去掉输入框下划线
//        border: InputBorder.none,
        // 带边框的输入框
//        border: OutlineInputBorder(),
        // 显示背景颜色
        filled: true,
        // 设置背景颜色
        fillColor: Colors.blue[100],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
//    _textEditingController.text = 'hi';
    _textEditingController.addListener(() {
      debugPrint('input: ${_textEditingController.text}');
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Theme.of(context).primaryColor,
      color: Theme.of(context).accentColor,
    );
  }
}
