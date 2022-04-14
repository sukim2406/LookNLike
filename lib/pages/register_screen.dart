import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../statics/global.dart' as global;

import '../widgets/main_logo.dart';
import '../widgets/text_input.dart';
import '../widgets/text_btn.dart';
import '../widgets/sns_btns.dart';
import '../widgets/login_btn.dart';

import '../controllers/auth_controller.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: global.setHeight(context, 1),
          width: global.setWidth(context, 1),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MainLogo(),
              TextInput(
                controller: emailController,
                obsecure: false,
                label: 'EMAIL',
              ),
              TextInput(
                controller: passwordController,
                obsecure: true,
                label: 'PASSWORD',
              ),
              TextInput(
                controller: confirmController,
                obsecure: true,
                label: 'CONFRIM',
              ),
              SizedBox(
                height: global.setHeight(context, .03),
              ),
              TextBtn(
                label: 'REGISTER',
                function: () {
                  if (emailController.text.isEmpty ||
                      passwordController.text.isEmpty ||
                      confirmController.text.isEmpty) {
                    Get.snackbar(
                      'Empty input field',
                      'Empty input field detected',
                      backgroundColor: Colors.redAccent,
                      snackPosition: SnackPosition.BOTTOM,
                      titleText: const Text(
                        'Account registration failed',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    );
                  } else if (passwordController.text !=
                      confirmController.text) {
                    Get.snackbar(
                      'Password Not Matched',
                      'Password & Confirm does not match',
                      backgroundColor: Colors.redAccent,
                      snackPosition: SnackPosition.BOTTOM,
                      titleText: const Text(
                        'Account registration failed',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    );
                  } else {
                    AuthController.instance.register(
                        emailController.text, passwordController.text);
                  }
                },
              ),
              const Text('\nor use following\n'),
              const SNSBtns(),
              SizedBox(
                height: global.setHeight(context, .02),
              ),
              const LoginBtn(),
            ],
          ),
        ),
      ),
    );
  }
}
