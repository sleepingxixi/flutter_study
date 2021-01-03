/*
 * @Author: Li Ping
 * @Date: 2021-01-03 22:27:49
 * @LastEditors: Li Ping
 * @LastEditTime: 2021-01-03 23:04:39
 */
import 'package:flutter/material.dart';

class Day3 extends StatelessWidget {
  const Day3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // opacity控件，拥有一个opacity属性，可以设置透明度
        // AnimatedOpacity(
        //   duration: Duration(seconds: 1),
        //   curve: Curves.linear,
        //   opacity: 1.0,
        //   child: Container(
        //     width: 300,
        //     height: 300,
        //     color: Colors.amber,
        //   ),
        // ),
        AnimatedPadding(
      duration: Duration(seconds: 1),
      padding: EdgeInsets.only(top: 32.0),
      child: Container(
        width: 300,
        height: 300,
        color: Colors.amber,
      ),
    );
  }
}
