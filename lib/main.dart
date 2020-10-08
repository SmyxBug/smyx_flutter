import 'package:flutter/material.dart';
import 'package:smyx_flutter/component/btn/ButtonDemo.dart';
import 'package:smyx_flutter/component/btn/FloatingActionButtonDemo.dart';
import 'package:smyx_flutter/component/form_demo.dart';

void main() => runApp(SmyxDemo());

class SmyxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Smyx Flutter Demo'),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              ListItem('表单提交', FromDemo()),
              ListItem('浮动btn', FloatingActionButtonDemo()),
              ListItem('按钮合集', ButtonDemo()),
            ],
          ),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;
  ListItem(this.title, this.page);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
