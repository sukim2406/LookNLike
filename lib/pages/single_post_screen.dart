import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../statics/global.dart' as global;

import '../widgets/tag_list.dart';

class SinglePostScreen extends StatefulWidget {
  final Map post;
  const SinglePostScreen({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  State<SinglePostScreen> createState() => _SinglePostScreenState();
}

class _SinglePostScreenState extends State<SinglePostScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> tagList = widget.post['tags'].cast<String>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: global.tertiaryColor,
        title: Text('Post Detail'),
      ),
      body: Container(
        height: global.setHeight(context, 1),
        width: global.setWidth(context, 1),
        color: global.secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: global.setHeight(context, .05),
            ),
            Container(
              width: global.setWidth(context, 1),
              height: global.setHeight(context, .05),
              color: global.secondaryColor,
              child: Row(
                children: [
                  SizedBox(
                    width: global.setWidth(context, .05),
                  ),
                  Text(
                    widget.post['creator'],
                  ),
                  Expanded(child: Container()),
                  Text(
                    widget.post['createdAt']
                        .toDate()
                        .toString()
                        .substring(0, 10),
                  ),
                  Expanded(child: Container()),
                  FaIcon(FontAwesomeIcons.heart),
                  SizedBox(
                    width: global.setWidth(context, .05),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: global.setHeight(context, .025),
            ),
            SizedBox(
              width: global.setWidth(context, .8),
              height: global.setHeight(context, .3),
              child: Image.network(widget.post['imgUrl']),
            ),
            SizedBox(
              height: global.setHeight(context, .025),
            ),
            Container(
              width: global.setWidth(context, 1),
              height: global.setWidth(context, .1),
              color: global.secondaryColor,
              child: Text('Tags here'),
            ),
            TagList(
              tags: tagList,
            ),
            SizedBox(
              height: global.setHeight(context, .025),
            ),
            Container(
              width: global.setWidth(context, 1),
              height: global.setWidth(context, .3),
              color: global.secondaryColor,
              child: Text('Clothing info.'),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
