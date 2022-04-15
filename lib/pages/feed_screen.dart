import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

import '../widgets/follower_list.dart';
import '../widgets/feed_post.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: global.setHeight(context, .8),
      width: global.setWidth(context, 1),
      color: global.secondaryColor,
      child: Column(
        children: [
          const FollowerList(),
          SizedBox(
            height: global.setHeight(context, .73),
            child: ListView(
              children: [
                FeedPost(
                  postData: {
                    'id': 'Tester1',
                    'profileImg': 'img/apple.png',
                    'date': DateTime.now().toString().substring(0, 16),
                    'postImg': 'img/apple.png',
                    'keywords': [
                      'new',
                      'logo',
                      'anythig',
                      'black',
                      'tpo',
                      'etc',
                    ]
                  },
                ),
                FeedPost(
                  postData: {
                    'id': 'Tester1',
                    'profileImg': 'img/google.png',
                    'date': DateTime.now().toString().substring(0, 16),
                    'postImg': 'img/google.png',
                    'keywords': [
                      'new',
                      'logo',
                      'anythig',
                      'black',
                      'tpo',
                      'etc',
                    ]
                  },
                ),
                FeedPost(
                  postData: {
                    'id': 'Tester1',
                    'profileImg': 'img/Logo460x460.png',
                    'date': DateTime.now().toString().substring(0, 16),
                    'postImg': 'img/Logo460x460.png',
                    'keywords': [
                      'new',
                      'logo',
                      'anythig',
                      'black',
                      'tpo',
                      'etc',
                    ]
                  },
                ),
                FeedPost(
                  postData: {
                    'id': 'Tester1',
                    'profileImg': 'img/Logo460x200.png',
                    'date': DateTime.now().toString().substring(0, 16),
                    'postImg': 'img/Logo460x200.png',
                    'keywords': [
                      'new',
                      'logo',
                      'anythig',
                      'black',
                      'tpo',
                      'etc',
                    ]
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
