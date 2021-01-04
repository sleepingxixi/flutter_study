/*
 * @Author: Li Ping
 * @Date: 2021-01-04 21:05:12
 * @LastEditors: Li Ping
 * @LastEditTime: 2021-01-04 22:13:46
 */

/// 这里有具体的实现细节
// https://stackoverflow.com/questions/56607908/how-to-make-scrolling-counter-in-flutter
import 'package:flutter/material.dart';

class Day5 extends StatefulWidget {
  Day5({Key key}) : super(key: key);

  @override
  _Day5State createState() => _Day5State();
}

class _Day5State extends State<Day5> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              AnimatedCounter(
                count: 1,
                duration: Duration(seconds: 1),
              ),
              AnimatedCounter(
                count: 0,
                duration: Duration(seconds: 1),
              ),
              AnimatedCounter(
                count: _count,
                duration: Duration(seconds: 1),
              ),
            ],
          ),
          FlatButton(
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
              child: Text('添加'))
        ],
      ),
    );
  }
}

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter(
      {Key key, @required this.count, @required this.duration})
      : super(key: key);
  final int count;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      child: TweenAnimationBuilder(
        duration: duration,
        tween: Tween(end: count.toDouble()),
        builder: (context, value, child) {
          int integer = value ~/ 1; // 保留整数部分
          double decimal = value - integer; // 保留小数部分
          return Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 25 - 75 * decimal, // 25--> -50
                child: Opacity(
                  opacity: 1 - decimal,
                  child: Container(
                    child: Text(
                      '$integer',
                      style: TextStyle(color: Colors.black, fontSize: 50),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 100 - 70 * decimal, //100-->25
                child: Opacity(
                  opacity: decimal,
                  child: Container(
                    child: Text(
                      '${integer + 1}',
                      style: TextStyle(color: Colors.black, fontSize: 50),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
