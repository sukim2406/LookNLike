import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../statics/global.dart' as global;

class StatBox extends StatelessWidget {
  final String label;
  final int numb;
  const StatBox({
    Key? key,
    required this.label,
    required this.numb,
  }) : super(key: key);

  getShortForm(numb) {
    var f = NumberFormat.compact(locale: 'en_US');
    return f.format(numb);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: global.setHeight(context, .1),
      width: global.setWidth(context, .15),
      color: global.secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: global.setHeight(context, .06),
            width: global.setWidth(context, .15),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                getShortForm(numb),
                style: TextStyle(
                  color: global.tertiaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: global.setHeight(context, .03),
            width: global.setWidth(context, .15),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                label,
                style: TextStyle(
                  color: global.tertiaryColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
