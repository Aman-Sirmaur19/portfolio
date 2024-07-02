import 'package:flutter/material.dart';

import '../../../constants.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    super.key,
    required this.count,
    this.text,
  });

  final int count;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: IntTween(begin: 0, end: count),
        duration: defaultDuration,
        builder: (context, value, child) => Text('$value$text',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: primaryColor)));
  }
}
