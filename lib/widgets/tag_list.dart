import 'package:flutter/material.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../statics/global.dart' as global;

class TagList extends StatefulWidget {
  final List<String> tags;
  const TagList({
    Key? key,
    required this.tags,
  }) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  TextfieldTagsController controller = TextfieldTagsController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: global.setWidth(context, .9),
      height: global.setHeight(context, .05),
      child: TextFieldTags(
        textfieldTagsController: controller,
        initialTags: widget.tags,
        textSeparators: const [' ', ','],
        inputfieldBuilder: (context, tec, fn, error, onChanged, onSubmitted) {
          return ((context, sc, tags, onTagDelete) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                // controller: tec,
                // focusNode: fn,
                decoration: InputDecoration(
                  // border: const UnderlineInputBorder(
                  //   borderSide: BorderSide(
                  //       color: Color.fromARGB(255, 74, 137, 92), width: 3.0),
                  // ),
                  // focusedBorder: const UnderlineInputBorder(
                  //   borderSide: BorderSide(
                  //       color: Color.fromARGB(255, 74, 137, 92), width: 3.0),
                  // ),
                  // helperText: 'Enter language...',
                  // helperStyle: const TextStyle(
                  //   color: Color.fromARGB(255, 74, 137, 92),
                  // ),
                  // hintText: controller.hasTags ? '' : "Enter tag...",
                  // errorText: error,
                  prefixIconConstraints: BoxConstraints(
                    maxWidth: global.setWidth(context, .9),
                  ),
                  prefixIcon: tags.isNotEmpty
                      ? SingleChildScrollView(
                          controller: sc,
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: tags.map((String tag) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                                color: global.tertiaryColor,
                              ),
                              margin: const EdgeInsets.only(right: 10.0),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    child: Text(
                                      '#$tag',
                                      style: TextStyle(
                                          color: global.secondaryColor),
                                    ),
                                    onTap: () {
                                      print("$tag selected");
                                    },
                                  ),
                                  // const SizedBox(width: 4.0),
                                  // InkWell(
                                  //   child: const Icon(
                                  //     Icons.cancel,
                                  //     size: 14.0,
                                  //     color: Color.fromARGB(255, 233, 233, 233),
                                  //   ),
                                  //   onTap: () {
                                  //     onTagDelete(tag);
                                  //   },
                                  // )
                                ],
                              ),
                            );
                          }).toList()),
                        )
                      : null,
                ),
                onChanged: onChanged,
                onSubmitted: onSubmitted,
              ),
            );
          });
        },
      ),
    );
  }
}
