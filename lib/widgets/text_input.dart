import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final bool obsecure;
  final String label;
  const TextInput({
    Key? key,
    required this.controller,
    required this.obsecure,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: global.setHeight(context, .08),
      width: global.setWidth(context, .6),
      child: TextField(
        style: TextStyle(
          color: global.primaryColor,
        ),
        controller: controller,
        obscureText: obsecure,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: global.primaryColor,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: global.tertiaryColor,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: global.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
