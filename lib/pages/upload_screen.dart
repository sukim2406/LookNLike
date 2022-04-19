import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

import '../statics/global.dart' as global;

import '../widgets/tag_upload.dart';

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
      appBar: AppBar(),
      body: Container(
        height: global.setHeight(context, .9),
        width: global.setWidth(context, 1),
        color: global.secondaryColor,
        // child: Image.file(
        //   File(filePicker.path),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: global.setHeight(context, .01),
            ),
            SizedBox(
              height: global.setHeight(context, .4),
              width: global.setWidth(context, 1),
              child: Image.asset(
                filePicker,
              ),
            ),
            Container(
              height: global.setHeight(context, .3),
              width: global.setWidth(context, .8),
              color: global.tertiaryColor,
            ),
            TagUpload(),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}