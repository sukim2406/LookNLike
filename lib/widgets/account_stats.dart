import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

import '../widgets/stat_box.dart';

class AccountStats extends StatelessWidget {
  const AccountStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: global.setHeight(context, .1),
      width: global.setWidth(context, 1),
      color: global.secondaryColor,
      child: Row(
        children: [
          SizedBox(
            width: global.setWidth(context, .08),
          ),
          StatBox(label: '  Posts  ', numb: 12300),
          SizedBox(
            width: global.setWidth(context, .08),
          ),
          StatBox(label: 'Following', numb: 12030402),
          SizedBox(
            width: global.setWidth(context, .08),
          ),
          StatBox(label: 'Followers', numb: 999),
          SizedBox(
            width: global.setWidth(context, .08),
          ),
          StatBox(label: '  Likes  ', numb: 1000),
          SizedBox(
            width: global.setWidth(context, .08),
          ),
        ],
      ),
    );
  }
}
