import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../statics/global.dart' as global;

import '../widgets/tag_list.dart';

import '../pages/single_post_screen.dart';

class FeedPost extends StatefulWidget {
  final Map postData;
  const FeedPost({
    Key? key,
    required this.postData,
  }) : super(key: key);

  @override
  State<FeedPost> createState() => _FeedPostState();
}

class _FeedPostState extends State<FeedPost> {
  late bool liked;
  @override
  void initState() {
    // TODO: implement initState
    liked = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: global.setWidth(context, 1),
      height: global.setHeight(context, .6),
      color: global.secondaryColor,
      child: Center(
        child: Container(
          width: global.setWidth(context, 1),
          height: global.setHeight(context, .55),
          color: global.quarternaryColor,
          child: Column(
            children: [
              SizedBox(
                width: global.setWidth(context, .9),
                height: global.setHeight(context, .05),
                child: Row(
                  children: [
                    SizedBox(
                      width: global.setWidth(context, .02),
                    ),
                    CircleAvatar(
                      radius: global.setHeight(context, .02),
                      backgroundColor: global.tertiaryColor,
                      child: Image.asset(
                        widget.postData['profileImg'],
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      width: global.setWidth(context, .02),
                    ),
                    SizedBox(
                      width: global.setWidth(context, .25),
                      child: Text(
                        widget.postData['id'],
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    SizedBox(
                      width: global.setWidth(context, .4),
                      child: Text(
                        widget.postData['date'],
                      ),
                    ),
                    SizedBox(
                      width: global.setWidth(context, .04),
                      height: global.setHeight(context, .05),
                      child: Center(
                        child: GestureDetector(
                          child: const FaIcon(
                            FontAwesomeIcons.ellipsisVertical,
                          ),
                          onTap: () {
                            print('POST MORE OPTION CLICKED');
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: global.setWidth(context, .02),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onDoubleTap: () {
                  setState(
                    () {
                      liked = !liked;
                    },
                  );
                  (liked) ? print('post liked') : print('post unliked');
                },
                child: Container(
                  width: global.setWidth(context, 1),
                  height: global.setHeight(context, .4),
                  color: Colors.white,
                  child: Image.asset(
                    widget.postData['postImg'],
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              TagList(
                tags: widget.postData['keywords'],
              ),
              SizedBox(
                width: global.setWidth(context, .9),
                height: global.setHeight(context, .05),
                child: Row(
                  children: [
                    SizedBox(
                      width: global.setWidth(context, .02),
                    ),
                    SizedBox(
                      width: global.setWidth(context, .04),
                      height: global.setHeight(context, .05),
                      child: Center(
                        child: GestureDetector(
                          child: (liked)
                              ? const FaIcon(
                                  FontAwesomeIcons.heartCircleCheck,
                                )
                              : const FaIcon(
                                  FontAwesomeIcons.heart,
                                ),
                          onTap: () {
                            setState(
                              () {
                                liked = !liked;
                              },
                            );

                            (liked)
                                ? print('post liked')
                                : print('post unliked');
                          },
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    SizedBox(
                      width: global.setWidth(context, .4),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SinglePostScreen(
                                post: widget.postData,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'Click for outfit details..',
                          style: TextStyle(
                            color: global.tertiaryColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: global.setWidth(context, .02),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
