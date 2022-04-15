import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../statics/global.dart' as global;

class TopNavbar extends StatelessWidget {
  const TopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: global.setHeight(context, .1),
      width: global.setWidth(context, 1),
      color: global.tertiaryColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: global.setHeight(context, .05),
            width: global.setWidth(context, .4),
            child: Image.asset(
              'img/LogoBackground460x200.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          SizedBox(
            height: global.setHeight(context, .05),
            width: global.setWidth(context, .1),
            child: Center(
              child: FaIcon(
                FontAwesomeIcons.upload,
                color: global.secondaryColor,
              ),
            ),
          ),
          Container(
            width: global.setWidth(context, .05),
          ),
        ],
      ),
    );
  }
}
