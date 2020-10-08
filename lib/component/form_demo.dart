import 'package:flutter/material.dart';

class FromDemo extends StatefulWidget {
  @override
  _FromDemoState createState() => _FromDemoState();
}

class _FromDemoState extends State<FromDemo> {
  var loginGlobalKey = GlobalKey<FormState>(); //
  String username, password;

  void login() {
    loginGlobalKey.currentState.save(); // 相当于调用了每个输入框的onSaved方法
    debugPrint('username=$username, password=$password');
    loginGlobalKey.currentState.validate(); // 打开验证
    Scaffold.of(context).showSnackBar(SnackBar( // 屏幕底部显示一个动画效果 默认4s后消失
      content: Text('logining............'), // conten 可以自己写各式各样的样式不一定非得只显示文字
      duration: Duration(seconds: 2), // 自定义设置显示时间 分 秒 天 都可以的
    ));
  }

  String vaildatorUsername(value) {
    if (value.isEmpty) {
      return "Username is required.";
    }
    return null;
  }

  String validatorPassword(value) {
    if (value.isEmpty) {
      return "Password is required.";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormDemo'),
        elevation: 0.0,
      ),
      body: Container(
        width: 300.0,
        child: Form(
          key: loginGlobalKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.access_alarm), // 左侧添加一个icon
                  labelText: '用户名/手机号/邮箱', // 标签属性
                  hintText: '这是输入用户登陆账户的地方', // 文本框输入之前文本框内的提示信息(文本获得了焦点才会显示)
                  helperText: '', // 此处也是验证提示语显示处一般有验证最好把这个属性打开并且写上空串
                  // border: InputBorder.none, // 隐藏输入框的默认的下边框
                  // border: OutlineInputBorder(), // 给输入框加四边边框
                ),
                onSaved: (value) {this.username = value;}, // 将输入框输入的值直接赋值给变量
                validator: vaildatorUsername, // 提价表单的时候的验证
                autovalidateMode: AutovalidateMode.onUserInteraction, // 打开自动验证 用户输入的不符合要求就会显示helperText,符合要求就自动隐藏helperText
              ),
              TextFormField(
                obscureText: true, // 密码框需要添加输入的每个单个字符就会用.替
                decoration: InputDecoration(
                  labelText: '密码',
                  helperText: '',
                ),
                onSaved: (value) {this.password = value;}, // 将输入框输入的值直接赋值给变量
                validator: validatorPassword,
                autovalidateMode: AutovalidateMode.onUserInteraction, // 打开自动验证 用户输入的不符合要求就会显示helperText,符合要求就自动隐藏helperText
              ),
              SizedBox(height: 32.0,), // 间距
              Container(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: login, 
                  color: Colors.blueAccent,
                  child: Text('登陆', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
