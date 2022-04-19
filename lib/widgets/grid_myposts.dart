import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

import '../pages/single_post_screen.dart';

class GridMyposts extends StatelessWidget {
  const GridMyposts({Key? key}) : super(key: key);

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
    ];
    return Container(
      height: global.setHeight(context, .8),
      width: global.setWidth(context, 1),
      color: global.secondaryColor,
      child: Column(
        children: [
          Container(
            height: global.setHeight(context, .025),
            width: global.setWidth(context, 1),
            child: FittedBox(
              fit: BoxFit.contain,
              alignment: Alignment.bottomLeft,
              child: Text(
                'My Posts',
                style: TextStyle(
                  color: global.tertiaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: global.setHeight(context, .775),
            width: global.setWidth(context, 1),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: temp.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SinglePostScreen(
                          post: temp[index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: global.tertiaryColor,
                    ),
                    child: Image.asset(temp[index]['img']!),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
