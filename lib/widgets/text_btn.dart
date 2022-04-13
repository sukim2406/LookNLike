import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

class TextBtn extends StatelessWidget {
  final String label;
  final Function function;
  const TextBtn({
    Key? key,
    required this.label,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: global.setHeight(context, .03),
      width: global.setWidth(context, .6),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          side: BorderSide(
            width: 2.0,
            color: global.quarternaryColor,
          ),
        ),
        onPressed: () {
          function();
        },
        child: Text(
          label,
          style: TextStyle(
            color: global.quarternaryColor,
          ),
        ),
      ),
    );
  }
}
