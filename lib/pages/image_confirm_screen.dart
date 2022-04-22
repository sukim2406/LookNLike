import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

import '../pages/upload_screen.dart';

import '../widgets/text_btn.dart';

class ImageConfirmScreen extends StatelessWidget {
  final String filePicker;
  const ImageConfirmScreen({
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
        width: global.setWidth(context, 1),
        height: global.setHeight(context, 1),
        color: global.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: global.setHeight(context, .7),
              width: global.setWidth(context, 1),
              child: Image.asset(
                filePicker,
                fit: BoxFit.contain,
              ),
            ),
            TextBtn(
              label: 'Continue',
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UploadScreen(
                      filePicker: filePicker,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
