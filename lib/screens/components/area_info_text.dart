import 'package:flutter/material.dart';

import '../../constants.dart';

class AreaInfoText extends StatelessWidget {
  final String title, text;

  const AreaInfoText({required this.title, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(text, style: const TextStyle(color: bodyTextColor)),
        ],
      ),
    );
  }
}
