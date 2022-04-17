import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

import '../widgets/search_bar.dart';
import '../widgets/search_grid.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var temp = [
      {
        'title': 'example 1',
        'img': 'img/apple.png',
      },
      {
        'title': 'example 2',
        'img': 'img/google.png',
      },
      {
        'title': 'example 3',
        'img': 'img/Login400x100.png',
      },
      {
        'title': 'example 4',
        'img': 'img/logo-appbar.png',
      },
      {
        'title': 'example 5',
        'img': 'img/Logo460x200.png',
      },
      {
        'title': 'example 6',
        'img': 'img/Logo460x460.png',
      },
      {
        'title': 'example 7',
        'img': 'img/LogoBackground460x200.png',
      },
      {
        'title': 'example 8',
        'img': 'img/LogoSecondary460x200.png',
      },
      {
        'title': 'example 9',
        'img': 'img/LogoWhite460x200.png',
      },
    ];
    TextEditingController searchController = TextEditingController();
    return Container(
      height: global.setHeight(context, .8),
      width: global.setWidth(context, 1),
      color: global.secondaryColor,
      child: Column(
        children: [
          SearchBar(controller: searchController),
          SearchGrid(
            posts: temp,
          ),
        ],
      ),
    );
  }
}
