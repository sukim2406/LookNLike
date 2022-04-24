import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

import '../widgets/search_bar.dart';
import '../widgets/search_grid.dart';

import '../controllers/post_controller.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return FutureBuilder(
      future: PostController.instance.getSuggestedPosts(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var temp = snapshot.data! as List<Object?>;
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
        } else {
          return Container(
            height: global.setHeight(context, .8),
            width: global.setWidth(context, 1),
            color: global.secondaryColor,
            child: Column(
              children: [
                SearchBar(controller: searchController),
                Center(
                  child: Text(
                    'No Data yet',
                    style: TextStyle(
                      color: global.primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
