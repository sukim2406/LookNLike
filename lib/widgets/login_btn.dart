import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

import '../pages/login_screen.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: global.setHeight(context, .02),
      child: RichText(
        text: TextSpan(
          text: 'Already have an account?  ',
          style: TextStyle(
            color: global.quarternaryColor,
          ),
          children: [
            TextSpan(
              text: 'Log In',
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.offAll(() => const LogIn());
                },
            )
          ],
        ),
      ),
    );
  }
}
