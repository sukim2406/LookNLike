import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

class FollowerBadge extends StatelessWidget {
  final String id;
  final String imgUrl;
  const FollowerBadge({
    Key? key,
    required this.id,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: global.setWidth(context, .2),
      color: global.secondaryColor,
      child: Center(
        child: SizedBox(
          width: global.setWidth(context, .15),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () {
                print(id + ' clicked');
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: SizedBox(
                  height: global.setHeight(context, .04),
                  width: global.setWidth(context, .12),
                  child: Image.asset(
                    imgUrl,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Text(
              id,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(color: global.tertiaryColor),
            ),
          ]),
        ),
      ),
    );
  }
}
