import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/rendering.dart';
import 'package:searchfield/searchfield.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../statics/global.dart' as global;

import '../widgets/text_input.dart';

class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  State<DropdownMenu> createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  final _multiKey = GlobalKey<DropdownSearchState<String>>();
  List itemInfos = [];
  String selectedItem = 'custom';
  TextEditingController customController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: global.setHeight(context, .36),
      width: global.setWidth(context, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: global.setHeight(context, .05),
            width: global.setWidth(context, 1),
            color: global.tertiaryColor,
            alignment: Alignment.center,
            child: const Text(
              'Add Outfit Info.',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: global.setHeight(context, .01),
          ),
          SizedBox(
            height: global.setHeight(context, .12),
            width: global.setWidth(context, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: global.setHeight(context, .12),
                  width: global.setWidth(context, .8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: global.setHeight(context, .07),
                        width: global.setWidth(context, .8),
                        child: Row(
                          children: [
                            SizedBox(
                              height: global.setHeight(context, .07),
                              width: global.setWidth(context, .3),
                              child: SearchField(
                                hint: 'item',
                                searchInputDecoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: global.secondaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
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
                                  setState(
                                    () {
                                      selectedItem = value.searchKey;
                                    },
                                  );
                                  print(selectedItem);
                                },
                                initialValue: SearchFieldListItem('custom'),
                                suggestions: global.clothingTypeList
                                    .map((e) => SearchFieldListItem(e))
                                    .toList(),
                              ),
                            ),
                            (selectedItem == 'custom')
                                ? Row(
                                    children: [
                                      SizedBox(
                                        width: global.setWidth(context, .05),
                                      ),
                                      SizedBox(
                                        height: global.setHeight(context, .07),
                                        width: global.setWidth(context, .45),
                                        child: TextInput(
                                          controller: customController,
                                          label: 'Enter a type',
                                          obsecure: false,
                                        ),
                                      ),
                                    ],
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: global.setHeight(context, .05),
                        width: global.setWidth(context, .8),
                        child: TextInput(
                          controller: descriptionController,
                          obsecure: false,
                          label:
                              'Enter clothing info here. (Maker, Model, Size, etc)',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: global.setWidth(context, .05),
                ),
                Container(
                  height: global.setHeight(context, .12),
                  width: global.setWidth(context, .1),
                  child: GestureDetector(
                    onTap: () {
                      if (descriptionController.text.isNotEmpty) {
                        var temp = {
                          'type': (selectedItem == 'custom')
                              ? customController.text
                              : selectedItem,
                          'info': descriptionController.text,
                        };
                        setState(() {
                          itemInfos.add(temp);
                        });
                      }
                    },
                    child: const Center(
                      child: FaIcon(FontAwesomeIcons.plus),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: global.setHeight(context, .03),
          ),
          Container(
            height: global.setHeight(context, .15),
            width: global.setWidth(context, 1),
            color: global.tertiaryColor,
            child: (itemInfos.length == 0)
                ? Text('please add at least 1 clothing info')
                : ListView.builder(
                    itemCount: itemInfos.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Text(itemInfos[index]['type']),
                        title: Text(itemInfos[index]['info']),
                        trailing: GestureDetector(
                          child: const FaIcon(FontAwesomeIcons.deleteLeft),
                          onTap: () {
                            setState(() {
                              itemInfos.removeAt(index);
                            });
                          },
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
