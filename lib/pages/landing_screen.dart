import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

import '../controllers/auth_controller.dart';

import '../widgets/bottom_navbar.dart';

// class LandingScreen extends StatelessWidget {
//   const LandingScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: global.setHeight(context, 1),
//         width: global.setWidth(context, 1),
//         color: global.tertiaryColor,
//         child: Center(
//           child: TextButton(
//             onPressed: () {
//               AuthController.instance.logout();
//             },
//             child: const Text('LOG OUT'),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavbar(curIndex: 1),
//     );
//   }
// }

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int curIndex = 0;

  void setCurIndex(int index) {
    setState(
      () {
        curIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: global.setHeight(context, 1),
        width: global.setWidth(context, 1),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                onPressed: () {
                  AuthController.instance.logout();
                },
                child: const Text('LOG OUT'),
              ),
            ),
            (curIndex == 0)
                ? Center(
                    child: Text('HOME'),
                  )
                : (curIndex == 1)
                    ? Center(
                        child: Text('SEARCH'),
                      )
                    : (curIndex == 2)
                        ? Center(
                            child: Text('UPLOAD'),
                          )
                        : Center(
                            child: Text('ACCOUNT'),
                          )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbar(
        curIndex: curIndex,
        setCurIndex: setCurIndex,
      ),
    );
  }
}
