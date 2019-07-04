import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  final String _imageUrl =
      'https://b-ssl.duitang.com/uploads/item/201504/04/20150404H2313_AnQXZ.jpeg';

  @override
  Widget build(BuildContext context) {
    // 它会尽可能的大, 所以会站满整个可以使用的区域
    // 如果你想设置它的尺寸, 可以把它放在一个Row 或者Column 里面
    return Container(
//      color: Colors.green[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(_imageUrl),
//          alignment: Alignment.topCenter,
//          repeat: ImageRepeat.repeat
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.blue[200], BlendMode.colorBurn),
        ),
      ),
      // Row: 行容器
      child: Row(
        // mainAxisAlignment: 主轴对齐方式
        // 可以用来居中显示
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            // 给Container 设置背景颜色(方式1)
//            color: Colors.lightBlue,
            child: Icon(
              Icons.directions_run,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.all(16),
            width: 96,
            height: 96,
            decoration: BoxDecoration(
              // 给Container 设置背景颜色(方式2)
//              color: Colors.redAccent,
              // 设置边框
              border: Border.all(
                color: Colors.white,
                width: 3,
                style: BorderStyle.solid,
              ),
              // 设置圆角
              // BoxShape.circle不可以设置此效果
//              borderRadius: BorderRadius.circular(10),
              // 设置阴影
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 16),
                  color: Colors.grey,
                  // 模糊程度
                  blurRadius: 6,
                  // 扩散程度 +:增大 -:减小
                  spreadRadius: -6,
                )
              ],
              shape: BoxShape.circle,
              // 放射型渐变
              // RadialGradient(colors: [Colors.redAccent, Colors.purpleAccent])
              gradient: LinearGradient(
                  colors: [Colors.redAccent, Colors.purpleAccent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'wyl',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34,
        ),
        children: <TextSpan>[
          TextSpan(
            text: '.com',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    // 字体大小
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return Text(
      "题目:$_title 作者:$_author \n君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停。与君歌一曲，请君为我倾耳听。(倾耳听 一作：侧耳听)钟鼓馔玉不足贵，但愿长醉不复醒。(不足贵 一作：何足贵；不复醒 一作：不愿醒/不用醒)古来圣贤皆寂寞，惟有饮者留其名。(古来 一作：自古；惟 通：唯)陈王昔时宴平乐，斗酒十千恣欢谑。主人何为言少钱，径须沽取对君酌。五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。",
      textDirection: TextDirection.ltr,
      // 文字对齐方式
      textAlign: TextAlign.center,
      style: _textStyle,
      // 最大行数
      maxLines: 3,
      // 字数超出界限后的处理方式
      overflow: TextOverflow.ellipsis,
    );
  }
}
