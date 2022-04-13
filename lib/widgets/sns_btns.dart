import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

class SNSBtns extends StatelessWidget {
  const SNSBtns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: global.setHeight(context, .05),
      width: global.setWidth(context, .5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(),
          ),
          GestureDetector(
            child: CircleAvatar(
              radius: global.setHeight(context, .025),
              child: ClipOval(
                child: Image.asset(
                  'img/apple.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            onTap: () {
              print('Apple login');
            },
          ),
          Expanded(
            child: Container(),
          ),
          GestureDetector(
            child: CircleAvatar(
              radius: global.setHeight(context, .025),
              child: ClipOval(
                child: Image.asset(
                  'img/google.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            onTap: () {
              print('Google login');
            },
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
