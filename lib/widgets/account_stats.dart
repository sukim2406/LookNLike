import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

class AccountStats extends StatelessWidget {
  const AccountStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: global.setHeight(context, .1),
      width: global.setWidth(context, 1),
      color: global.secondaryColor,
      child: Row(
        children: [
          SizedBox(
            width: global.setWidth(context, .04),
          ),
          Container(
            height: global.setHeight(context, .1),
            width: global.setWidth(context, .15),
            color: global.secondaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: global.setHeight(context, .06),
                  width: global.setWidth(context, .15),
                  color: Colors.amber,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text('0'),
                  ),
                ),
                Container(
                  height: global.setHeight(context, .03),
                  width: global.setWidth(context, .15),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text('POSTS'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: global.setWidth(context, .04),
          ),
          Container(
            height: global.setHeight(context, .1),
            width: global.setWidth(context, .15),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: global.setHeight(context, .06),
                  width: global.setWidth(context, .15),
                  color: Colors.amber,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text('0'),
                  ),
                ),
                Container(
                  height: global.setHeight(context, .03),
                  width: global.setWidth(context, .15),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text('LIKES'),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: global.setWidth(context, .04),
          ),
          Container(
            height: global.setHeight(context, .1),
            width: global.setWidth(context, .15),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: global.setHeight(context, .06),
                  width: global.setWidth(context, .15),
                  color: Colors.amber,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text('0'),
                  ),
                ),
                Container(
                  height: global.setHeight(context, .03),
                  width: global.setWidth(context, .15),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text('FOLLOWING'),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: global.setWidth(context, .04),
          ),
          Container(
            height: global.setHeight(context, .1),
            width: global.setWidth(context, .15),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: global.setHeight(context, .06),
                  width: global.setWidth(context, .15),
                  color: Colors.amber,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text('0'),
                  ),
                ),
                Container(
                  height: global.setHeight(context, .03),
                  width: global.setWidth(context, .15),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text('FOLLOWERS'),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: global.setWidth(context, .04),
          ),
        ],
      ),
    );
  }
}
