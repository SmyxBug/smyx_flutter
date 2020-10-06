import 'package:flutter/material.dart';
import 'package:smyx_flutter/model/local_data.dart';

class GirdViewDemo extends StatefulWidget {
  @override
  _GirdViewDemoState createState() => _GirdViewDemoState();
}

class _GirdViewDemoState extends State<GirdViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridBuildViewDemo(),
    );
  }
}

class GridBuildViewDemo extends StatelessWidget {
  Widget _gridItemBuild(BuildContext context, int index) {
    return Container(
      child: Image.network(
        LocalDatas[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: LocalDatas.length,
      itemBuilder: _gridItemBuild,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }
}

class GridExtentViewDemo extends StatelessWidget {
  List<Widget> _buildGird(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[500],
        alignment: Alignment(0.0, 0.0),
        child: Text('item $index'),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 50.0, // 控制单行存在的最多的个数
      crossAxisSpacing: 14.0, // 交叉轴间距
      mainAxisSpacing: 14.0, // 主轴间距
      // scrollDirection: Axis.horizontal, // 横着滑动
      // scrollDirection: Axis.vertical, // 竖着滑动
      children: _buildGird(50),
    );
  }
}

class GridCountViewDemo extends StatelessWidget {
  List<Widget> _buildGird(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[500],
        alignment: Alignment(0.0, 0.0),
        child: Text('item $index'),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3, // 单行数量
      crossAxisSpacing: 14.0, // 交叉轴间距
      mainAxisSpacing: 14.0, // 主轴间距
      // scrollDirection: Axis.horizontal, // 横着滑动
      // scrollDirection: Axis.vertical, // 竖着滑动
      children: _buildGird(50),
    );
  }
}
