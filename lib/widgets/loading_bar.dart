import 'package:flutter/material.dart';

import '../statics/texts.dart' as texts;

class LoadingBar extends StatelessWidget {
  final int textIndex;
  final int languageIndex;
  const LoadingBar({
    Key? key,
    required this.textIndex,
    required this.languageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: 100,
          height: 100,
          child: CircularProgressIndicator(
            backgroundColor: Colors.black,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            texts.loadingTexts[languageIndex][textIndex],
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
