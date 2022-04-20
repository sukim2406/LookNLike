import 'package:flutter/material.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../statics/global.dart' as global;

class TagUpload extends StatefulWidget {
  const TagUpload({
    Key? key,
  }) : super(key: key);

  @override
  State<TagUpload> createState() => _TagUploadState();
}

class _TagUploadState extends State<TagUpload> {
  TextfieldTagsController controller = TextfieldTagsController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: global.setWidth(context, .9),
      height: global.setHeight(context, .2),
      child: TextFieldTags(
        textfieldTagsController: controller,
        initialTags: const ['look', '&', 'like', 'test', 'hi', 'alsdkja'],
        inputfieldBuilder: (context, tec, fn, error, onChanged, onSubmitted) {
          return ((context, sc, tags, onTagDelete) {
            return Column(
              children: [
                SingleChildScrollView(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Text(
                              '#$tag',
                              style: TextStyle(color: global.secondaryColor),
                            ),
                            onTap: () {
                              print("$tag selected");
                            },
                          ),
                          const SizedBox(width: 4.0),
                          InkWell(
                            child: Icon(
                              Icons.cancel,
                              size: 14.0,
                              color: global.quarternaryColor,
                            ),
                            onTap: () {
                              onTagDelete(tag);
                            },
                          )
                        ],
                      ),
                    );
                  }).toList()),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: global.setWidth(context, .8),
                      child: TextField(
                        controller: tec,
                        focusNode: fn,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: global.quarternaryColor, width: 3.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: global.quarternaryColor, width: 3.0),
                          ),
                          helperText: 'Add tags...',
                          helperStyle: TextStyle(
                            color: global.quarternaryColor,
                          ),
                          hintText: controller.hasTags ? '' : "Enter tag...",
                          errorText: error,
                          prefixIconConstraints: BoxConstraints(
                            maxWidth: global.setWidth(context, .9),
                          ),
                        ),
                        onChanged: onChanged,
                        onSubmitted: onSubmitted,
                      ),
                    ),
                    SizedBox(
                      width: global.setWidth(context, .1),
                      child: GestureDetector(
                        child: FaIcon(FontAwesomeIcons.plus),
                        onTap: () {
                          print(tec.text);
                        },
                      ),
                    )
                  ],
                ),
              ],
            );
          });
        },
      ),
      // child: TextFieldTags(
      //   textfieldTagsController: controller,
      //   initialTags: const ['hi', 'bye'],
      //   textSeparators: const [' ', ','],
      //   inputfieldBuilder: (context, tec, fn, error, onChanged, onSubmitted) {
      //     return ((context, sc, tags, onTagDelete) {
      //       return Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 10.0),
      //         child: TextField(
      //           controller: tec,
      //           focusNode: fn,
      //           decoration: InputDecoration(
      //             border: const UnderlineInputBorder(
      //               borderSide: BorderSide(
      //                   color: Color.fromARGB(255, 74, 137, 92), width: 3.0),
      //             ),
      //             focusedBorder: const UnderlineInputBorder(
      //               borderSide: BorderSide(
      //                   color: Color.fromARGB(255, 74, 137, 92), width: 3.0),
      //             ),
      //             helperText: 'Enter language...',
      //             helperStyle: const TextStyle(
      //               color: Color.fromARGB(255, 74, 137, 92),
      //             ),
      //             hintText: controller.hasTags ? '' : "Enter tag...",
      //             errorText: error,
      //             prefixIconConstraints: BoxConstraints(
      //               maxWidth: global.setWidth(context, .9),
      //             ),
      //             prefixIcon: tags.isNotEmpty
      //                 ? SingleChildScrollView(
      //                     controller: sc,
      //                     scrollDirection: Axis.horizontal,
      //                     child: Row(
      //                         children: tags.map((String tag) {
      //                       return Container(
      //                         decoration: BoxDecoration(
      //                           borderRadius: const BorderRadius.all(
      //                             Radius.circular(20.0),
      //                           ),
      //                           color: global.tertiaryColor,
      //                         ),
      //                         margin: const EdgeInsets.only(right: 10.0),
      //                         padding: const EdgeInsets.symmetric(
      //                             horizontal: 10.0, vertical: 4.0),
      //                         child: Row(
      //                           mainAxisAlignment:
      //                               MainAxisAlignment.spaceBetween,
      //                           children: [
      //                             InkWell(
      //                               child: Text(
      //                                 '#$tag',
      //                                 style: TextStyle(
      //                                     color: global.secondaryColor),
      //                               ),
      //                               onTap: () {
      //                                 print("$tag selected");
      //                               },
      //                             ),
      //                             const SizedBox(width: 4.0),
      //                             InkWell(
      //                               child: Icon(
      //                                 Icons.cancel,
      //                                 size: 14.0,
      //                                 color: global.quarternaryColor,
      //                               ),
      //                               onTap: () {
      //                                 onTagDelete(tag);
      //                               },
      //                             )
      //                           ],
      //                         ),
      //                       );
      //                     }).toList()),
      //                   )
      //                 : null,
      //           ),
      //           onChanged: onChanged,
      //           onSubmitted: onSubmitted,
      //         ),
      //       );
      //     });
      //   },
      // ),
    );
  }
}
