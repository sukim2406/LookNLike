import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: SizedBox(
          height: global.setHeight(context, 1),
          width: global.setWidth(context, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: global.setWidth(context, .8),
                height: global.setHeight(context, .3),
                child: Image.asset(widget.post['postImg']),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
