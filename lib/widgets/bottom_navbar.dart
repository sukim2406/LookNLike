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
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: global.secondaryColor,
      selectedItemColor: global.tertiaryColor,
      unselectedItemColor: global.quarternaryColor,
      showUnselectedLabels: false,
      currentIndex: curIndex,
      onTap: (index) => setCurIndex(index),
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.house),
          label: 'HOME',
          backgroundColor: Colors.amber,
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.searchengin),
          label: 'SEARCH',
          backgroundColor: Colors.amber,
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.upload),
          label: 'UPLOAD',
          backgroundColor: Colors.amber,
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.person),
          label: 'ACCOUNT',
          backgroundColor: Colors.amber,
        ),
      ],
    );
  }
}
