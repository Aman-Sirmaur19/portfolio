import 'package:flutter/material.dart';

import '../../constants.dart';

import 'animated_progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding:
          const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text('Skills',
              style: Theme.of(context).textTheme.headlineSmall),
        ),
        const Row(
          children: [
            Expanded(
              child: AnimatedProgressIndicator(
                percentage: 0.8,
                label: 'Flutter',
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedProgressIndicator(
                percentage: 0.75,
                label: 'Firebase',
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedProgressIndicator(
                percentage: 0.6,
                label: 'DSA',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
