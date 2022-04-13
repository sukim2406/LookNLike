import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

class MainLogo extends StatelessWidget {
  const MainLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: global.setWidth(context, .8),
      height: global.setHeight(context, .2),
      child: const Image(
          image: AssetImage('img/Logo460x460.png'), fit: BoxFit.fitWidth),
    );
  }
}
