import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

import '../pages/register_screen.dart';

class RegisterBtn extends StatelessWidget {
  const RegisterBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: global.setHeight(context, .02),
      child: RichText(
        text: TextSpan(
          text: 'Don\'t have account yet?  ',
          style: TextStyle(
            color: global.quarternaryColor,
          ),
          children: [
            TextSpan(
              text: 'Register',
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.offAll(() => const Register());
                },
            )
          ],
        ),
      ),
    );
  }
}
