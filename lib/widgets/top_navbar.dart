import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

import '../statics/global.dart' as global;

import '../controllers/auth_controller.dart';

import '../pages/upload_screen.dart';
import '../pages/image_confirm_screen.dart';

class TopNavbar extends StatelessWidget {
  const TopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: global.setHeight(context, .1),
      width: global.setWidth(context, 1),
      color: global.tertiaryColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: global.setHeight(context, .05),
            width: global.setWidth(context, .4),
            child: Image.asset(
              'img/LogoBackground460x200.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          SizedBox(
            height: global.setHeight(context, .05),
            width: global.setWidth(context, .1),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('LOG OUT'),
                        content: Text('Do you want to log out?'),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text('NO'),
                          ),
                          TextButton(
                            onPressed: () {
                              AuthController.instance.logout();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: FaIcon(
                  FontAwesomeIcons.arrowRightFromBracket,
                  color: global.secondaryColor,
                ),
              ),
            ),
          ),
          Container(
            width: global.setWidth(context, .05),
          ),
          SizedBox(
            height: global.setHeight(context, .05),
            width: global.setWidth(context, .1),
            child: Center(
              child: GestureDetector(
                onTap: () async {
                  final filePicker = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  print(filePicker);
                  // final filePicker = await FilePicker.platform.pickFiles(
                  //   allowMultiple: false,
                  //   type: FileType.image,
                  // );
                  if (filePicker == null) {
                    print('hi?');
                  } else {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => UploadScreen(
                    //       filePicker: filePicker,
                    //     ),
                    //   ),
                    // );
                  }
                },
                child: FaIcon(
                  FontAwesomeIcons.upload,
                  color: global.secondaryColor,
                ),
              ),
            ),
          ),
          Container(
            width: global.setWidth(context, .05),
          ),
          SizedBox(
            height: global.setHeight(context, .05),
            width: global.setWidth(context, .1),
            child: Center(
              child: GestureDetector(
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          // UploadScreen(filePicker: 'img/Logo460x460.png'),
                          ImageConfirmScreen(filePicker: 'img/Logo460x460.png'),
                    ),
                  );
                  // final filePicker =
                  //     await ImagePicker().pickImage(source: ImageSource.camera);
                  // print(filePicker);
                  // // final filePicker = await FilePicker.platform.pickFiles(
                  // //   allowMultiple: false,
                  // //   type: FileType.image,
                  // // );
                  // if (filePicker == null) {
                  //   print('hi?');
                  // } else {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => UploadScreen(
                  //         filePicker: filePicker,
                  //       ),
                  //     ),
                  //   );
                  // }
                },
                child: FaIcon(
                  FontAwesomeIcons.camera,
                  color: global.secondaryColor,
                ),
              ),
            ),
          ),
          Container(
            width: global.setWidth(context, .05),
          ),
        ],
      ),
    );
  }
}
