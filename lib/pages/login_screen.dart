/*
icon attribute
<a href="https://www.flaticon.com/free-icons/google" title="google icons">Google icons created by Freepik - Flaticon</a>
<a href="https://www.flaticon.com/free-icons/company" title="company icons">Company icons created by Pixel perfect - Flaticon</a>
*/

import 'package:flutter/material.dart';

import '../statics/global.dart' as global;
import '../widgets/main_logo.dart';
import '../widgets/text_input.dart';
import '../widgets/text_btn.dart';
import '../widgets/sns_btns.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

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
              SizedBox(
                height: global.setHeight(context, .03),
              ),
              TextBtn(
                label: 'LOG IN',
                function: () {
                  print('hi');
                },
              ),
              const Text('\nor use following\n'),
              const SNSBtns(),
              TextButton(
                onPressed: () {
                  print('Register');
                },
                child: Text(
                  'create account',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
