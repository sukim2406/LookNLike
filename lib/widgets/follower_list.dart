import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

import '../widgets/follower_badge.dart';

class FollowerList extends StatelessWidget {
  const FollowerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: global.setHeight(context, .07),
      width: global.setWidth(context, 1),
      color: global.secondaryColor,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          FollowerBadge(
            id: 'Tester1',
            imgUrl: 'img/apple.png',
          ),
          FollowerBadge(
            id: 'Tester2',
            imgUrl: 'img/google.png',
          ),
          FollowerBadge(
            id: 'SuperUser',
            imgUrl: 'img/logo-appbar.png',
          ),
          FollowerBadge(
            id: 'mE____EE',
            imgUrl: 'img/LogoWhite460x200.png',
          ),
          FollowerBadge(
            id: 'Tadlkjclaks',
            imgUrl: 'img/Logo460x460.png',
          ),
          FollowerBadge(
            id: 'Tasdasdester1',
            imgUrl: 'img/Logo460x200.png',
          ),
          FollowerBadge(
            id: 'Testerasd1',
            imgUrl: 'img/LogoSecondary460x200.png',
          ),
        ],
      ),
    );
  }
}
