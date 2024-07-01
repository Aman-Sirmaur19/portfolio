import 'package:flutter/material.dart';

import '../../constants.dart';

import 'animated_linear_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child:
              Text('Coding', style: Theme.of(context).textTheme.headlineSmall),
        ),
        const AnimatedLinearProgressIndicator(percentage: 0.7, label: 'Dart'),
        const AnimatedLinearProgressIndicator(percentage: 0.85, label: 'C++'),
      ],
    );
  }
}
