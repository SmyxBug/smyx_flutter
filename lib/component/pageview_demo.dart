import 'package:flutter/material.dart';
import 'package:smyx_flutter/model/local_data.dart';

class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {

  Widget _localItem(BuildContext context, int index) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.network(
            LocalDatas[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(LocalDatas[index].title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
              Text(LocalDatas[index].author, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        itemCount: LocalDatas.length,
        itemBuilder: _localItem
      ),
    );
  }
  
}