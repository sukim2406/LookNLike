import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dropdown_search/dropdown_search.dart';

import '../statics/global.dart' as global;

import '../widgets/tag_upload.dart';
import '../widgets/dropdown_menu.dart';
import '../widgets/text_btn.dart';

class UploadScreen extends StatelessWidget {
  // final XFile filePicker;
  final String filePicker;
  const UploadScreen({
    Key? key,
    required this.filePicker,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: global.tertiaryColor,
        title: Text('New post'),
      ),
      body: Container(
        height: global.setHeight(context, .9),
        width: global.setWidth(context, 1),
        // color: global.tertiaryColor,
        // child: Image.file(
        //   File(filePicker.path),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(),
            ),
            SizedBox(
              height: global.setHeight(context, .1),
              width: global.setWidth(context, 1),
              child: Image.asset(
                filePicker,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: global.setHeight(context, .02),
            ),
            DropdownMenu(),
            SizedBox(
              height: global.setHeight(context, .02),
            ),
            TagUpload(),
            TextBtn(
              label: 'UPLOAD',
              function: () {
                print('hi');
              },
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
