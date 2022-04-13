import 'package:flutter/material.dart';
import 'dart:math';

import '../statics/global.dart' as global;
import '../widgets/loading_bar.dart';
import '../widgets/main_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: global.setWidth(context, 1),
        height: global.setHeight(context, 1),
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MainLogo(),
              SizedBox(
                height: global.setHeight(context, .05),
              ),
              LoadingBar(
                textIndex: Random().nextInt(global.loadingTextMaxIndex),
                languageIndex: global.languageIndex,
              ),
              SizedBox(
                height: global.setHeight(context, .2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
