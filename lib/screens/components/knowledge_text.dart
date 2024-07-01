import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(children: [
        SvgPicture.asset('assets/icons/check.svg'),
        const SizedBox(width: defaultPadding / 2),
        Text(text, style: const TextStyle(color: bodyTextColor)),
      ]),
    );
  }
}
