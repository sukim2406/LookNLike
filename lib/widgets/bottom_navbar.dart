import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../statics/global.dart' as global;

class BottomNavbar extends StatelessWidget {
  final int curIndex;
  final Function setCurIndex;
  const BottomNavbar({
    Key? key,
    required this.curIndex,
    required this.setCurIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: global.setHeight(context, .1),
      color: global.secondaryColor,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: global.tertiaryColor,
        selectedItemColor: global.secondaryColor,
        unselectedItemColor: global.quarternaryColor,
        showUnselectedLabels: false,
        currentIndex: curIndex,
        onTap: (index) => setCurIndex(index),
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.searchengin),
            label: 'SEARCH',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bagShopping),
            label: 'SHOP',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.person),
            label: 'ACCOUNT',
          ),
        ],
      ),
    );
  }
}
