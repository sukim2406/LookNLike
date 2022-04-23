import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../statics/global.dart' as global;

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: global.tertiaryColor,
        title: Text('Post Detail'),
      ),
      body: SizedBox(
        height: global.setHeight(context, 1),
        width: global.setWidth(context, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: global.setWidth(context, 1),
              height: global.setHeight(context, .05),
              color: global.secondaryColor,
              child: Row(
                children: [
                  SizedBox(
                    width: global.setWidth(context, .05),
                  ),
                  Text('UserID'),
                  Expanded(child: Container()),
                  Text('Upload-Date'),
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
              child: Image.asset(widget.post['postImg']),
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
            SizedBox(
              height: global.setHeight(context, .025),
            ),
            Container(
              width: global.setWidth(context, 1),
              height: global.setWidth(context, .3),
              color: global.secondaryColor,
              child: Text('Clothing info.'),
            ),
          ],
        ),
      ),
    );
  }
}
