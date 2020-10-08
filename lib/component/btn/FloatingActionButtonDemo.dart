import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      elevation: 0.0,
      backgroundColor: Colors.black87,
      // shape: BeveledRectangleBorder( // 改变悬浮按钮的形状 此写法变成了一个菱形
      //   borderRadius: BorderRadius.circular(30.0)
      // ),
    );

    // 横排+号+icon的悬浮按钮
    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.add),
      label: Text('Add'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
