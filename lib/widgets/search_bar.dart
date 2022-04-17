import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../statics/global.dart' as global;

import '../widgets/text_input.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  const SearchBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: global.setHeight(context, .07),
      width: global.setWidth(context, 1),
      color: global.secondaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: global.setWidth(context, .05),
          ),
          TextInput(
            controller: controller,
            obsecure: false,
            label: '',
          ),
          Container(
            width: global.setWidth(context, .1),
            height: global.setHeight(context, .07),
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 10),
            child: const FaIcon(FontAwesomeIcons.magnifyingGlass),
          ),
        ],
      ),
    );
  }
}
