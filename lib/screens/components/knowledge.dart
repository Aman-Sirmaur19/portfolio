import 'package:flutter/material.dart';

import '../../constants.dart';

import 'knowledge_text.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text('Knowledge',
              style: Theme.of(context).textTheme.headlineSmall),
        ),
        const KnowledgeText(text: 'Flutter, Dart'),
        const KnowledgeText(text: 'Firebase'),
        const KnowledgeText(text: 'Git & Github'),
      ],
    );
  }
}
