import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

import '../widgets/info_bar.dart';
import '../widgets/account_stats.dart';
import '../widgets/grid_myposts.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: global.setHeight(context, .8),
      width: global.setWidth(context, 1),
      color: global.secondaryColor,
      child: SizedBox(
        height: global.setHeight(context, 1.2),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InfoBar(),
              AccountStats(),
              GridMyposts(),
            ],
          ),
        ),
      ),
    );
  }
}
