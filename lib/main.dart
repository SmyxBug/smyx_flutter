import 'package:flutter/material.dart';
import 'package:smyx_flutter/component/gird_view_demo.dart';
import 'package:smyx_flutter/component/pageview_demo.dart';
import 'package:smyx_flutter/component/sliver_demo.dart';

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
          // body: PageViewDemo(),
          // body: GirdViewDemo(),
          body: SliverDemo(),
        ),
      ),
    );
  }
}