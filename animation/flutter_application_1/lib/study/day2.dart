/*
 * @Author: Li Ping
 * @Date: 2021-01-03 19:22:37
 * @LastEditors: Li Ping
 * @LastEditTime: 2021-01-03 22:38:42
 */

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Day2 extends StatefulWidget {
  Day2({Key key}) : super(key: key);

  @override
  _Day2State createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  bool showLoading = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.yellow,
          child: AnimatedSwitcher(
            // 默认提供的动画
            // transitionBuilder: (child, animation) {
            //   return FadeTransition(
            //     opacity: animation,
            //     child: child,
            //   );
            // },

            // 显示设置旋转动画
            // transitionBuilder: (child, animation) {
            //   return RotationTransition(
            //     // 转几圈
            //     turns: animation,
            //     child: child,
            //   );
            // },

            // 显示设置缩放动画+渐隐渐显动画
            // transitionBuilder: (child, animation) {
            //   return FadeTransition(
            //     opacity: animation,
            //     child: ScaleTransition(
            //       scale: animation,
            //       child: child,
            //     ),
            //   );
            // },

            duration: Duration(seconds: 1),

            // 不同的控件之间切换是用动画效果的
            // child: showLoading
            //     ? Center(
            //         child: CircularProgressIndicator(),
            //       )
            //     : Image.network(
            //         "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fn.sinaimg.cn%2Fsinakd10119%2F386%2Fw1024h962%2F20200304%2Ff980-iqmtvwu5188705.jpg&refer=http%3A%2F%2Fn.sinaimg.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1612273401&t=55d3774349a81c32b97eca6dff841d5e"),

            // 通过使用key属性可以告知是不同的控件
            child: Text(
              showLoading.toString(),
              // 如果不想实时修改key，可以使用如下方式
              // key: UniqueKey(),
              key: ValueKey(showLoading),
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        // child: AnimatedCrossFade(
        //   duration: Duration(seconds: 1),
        //   crossFadeState: showLoading
        //       ? CrossFadeState.showFirst
        //       : CrossFadeState.showSecond,
        //   firstChild: Center(
        //     child: CircularProgressIndicator(),
        //   ),
        //   secondChild: Image.network(
        //       "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fn.sinaimg.cn%2Fsinakd10119%2F386%2Fw1024h962%2F20200304%2Ff980-iqmtvwu5188705.jpg&refer=http%3A%2F%2Fn.sinaimg.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1612273401&t=55d3774349a81c32b97eca6dff841d5e"),
        // ),
      ),
      onTap: () {
        setState(() {
          showLoading = !showLoading;
        });
      },
    );
  }
}
