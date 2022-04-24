import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

import '../pages/single_post_screen.dart';

class SearchGrid extends StatelessWidget {
  final List posts;
  const SearchGrid({
    Key? key,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: global.setHeight(context, .73),
      width: global.setWidth(context, .95),
      color: global.secondaryColor,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: posts.length,
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
                    post: posts[index],
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: global.tertiaryColor,
              ),
              child: Image.network(
                posts[index]['imgUrl'],
              ),
            ),
          );
        },
      ),
    );
  }
}
