/*
 * @Author: Li Ping
 * @Date: 2021-01-03 23:18:15
 * @LastEditors: Li Ping
 * @LastEditTime: 2021-01-03 23:39:12
 */
import 'package:flutter/material.dart';

class Day4 extends StatelessWidget {
  const Day4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int count = 0;
    // return TweenAnimationBuilder(
    //   duration: Duration(seconds: 1),
    //   // 设置关键帧
    //   tween: Tween(begin: 0.0, end: 1.0),
    //   // 系统会根据关键帧以及手机每秒钟刷新动画的频率来调用下面的函数
    //   // 每秒钟大概40～60次（个人猜测）
    //   // 通过使用value值可以达到动画效果的设置
    //   builder: (context, value, child) {
    //     count++;
    //     print("value$count=$value");
    //     return Opacity(
    //       opacity: value,
    //       child: Container(
    //         width: 200,
    //         height: 200,
    //         color: Colors.pink,
    //       ),
    //     );
    //   },
    // );
    return TweenAnimationBuilder(
      tween: Tween(
        begin: Offset(10, 10),
        end: Offset(80, 80),
      ),
      duration: Duration(seconds: 1),
      builder: (context, value, child) {
        return Transform.translate(
          offset: value,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.pink,
          ),
        );
      },
    );
  }
}
