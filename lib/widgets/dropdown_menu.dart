import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/rendering.dart';
import 'package:searchfield/searchfield.dart';

import '../statics/global.dart' as global;

class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  State<DropdownMenu> createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  final _multiKey = GlobalKey<DropdownSearchState<String>>();
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    var temp = [
      SearchFieldListItem('tshirt'),
      SearchFieldListItem('top'),
      SearchFieldListItem('sneakers'),
      SearchFieldListItem('jacket'),
      SearchFieldListItem('dress'),
      SearchFieldListItem('jeans'),
    ];
    return Container(
      height: global.setHeight(context, .2),
      width: global.setWidth(context, 1),
      color: global.tertiaryColor,
      child: Row(
        children: [
          SizedBox(
            width: global.setWidth(context, .05),
          ),
          SizedBox(
            height: global.setHeight(context, .2),
            width: global.setWidth(context, .3),
            child: SearchField(
              hint: 'item',
              searchInputDecoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: global.secondaryColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: global.secondaryColor,
                    width: 2,
                  ),
                ),
              ),
              itemHeight: global.setHeight(context, .03),
              maxSuggestionsInViewPort: 5,
              suggestionsDecoration: BoxDecoration(
                color: global.tertiaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              onSuggestionTap: (value) {
                selectedItem = value.toString();
                print(selectedItem);
              },
              suggestions: temp,
            ),
          ),
          SizedBox(
            height: global.setHeight(context, .2),
            width: global.setWidth(context, .6),
          ),
        ],
      ),
    );
  }
}
