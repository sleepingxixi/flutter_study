/*
 * @Author: Li Ping
 * @Date: 2021-01-03 18:34:46
 * @LastEditors: Li Ping
 * @LastEditTime: 2021-01-03 19:12:02
 */
/*
 * @Author: Li Ping
 * @Date: 2021-01-03 18:34:46
 * @LastEditors: Li Ping
 * @LastEditTime: 2021-01-03 18:38:10
 */
import 'package:flutter/material.dart';

class Day1 extends StatelessWidget {
  const Day1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // 使用Animated开头，可以将此控件带上动画效果
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        width: 300,
        height: 100,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              // 设置渐变的方向
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              // 设置渐变的位置
              stops: [0.2, 0.5],
              // 颜色
              colors: [Colors.purple, Colors.pink],
            ),
            // 外阴影，可以叠加，后面的会覆盖前面的颜色
            boxShadow: [
              BoxShadow(spreadRadius: 20, blurRadius: 20, color: Colors.amber),
              // BoxShadow(spreadRadius: 20, blurRadius: 20, color: Colors.blue)
            ],
            // 圆角
            borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
