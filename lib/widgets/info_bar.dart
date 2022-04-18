import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

class InfoBar extends StatelessWidget {
  const InfoBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: global.setHeight(context, .1),
      width: global.setWidth(context, .8),
      color: global.secondaryColor,
      child: Row(
        children: [
          SizedBox(
            width: global.setWidth(context, .075),
          ),
          CircleAvatar(
            radius: global.setHeight(context, .04),
            child: Image.asset('img/google.png'),
            backgroundColor: global.secondaryColor,
            // Text(
            //   'Profile image here',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     color: global.quarternaryColor,
            //   ),
            // ),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            height: global.setHeight(context, .08),
            width: global.setWidth(context, .4),
            color: global.secondaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: global.setWidth(context, .4),
                  child: Text(
                    'ID HERE',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: global.tertiaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: global.setWidth(context, .4),
                  child: Text(
                    'Greeting message can be displayed here, this might be long and if it is longer than 3 lines it will be clipped and',
                    textAlign: TextAlign.start,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: global.tertiaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: global.setWidth(context, .075),
          ),
        ],
      ),
    );
  }
}
