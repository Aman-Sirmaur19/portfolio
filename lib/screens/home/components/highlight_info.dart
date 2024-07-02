import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

import '../../../constants.dart';
import 'animated_counter.dart';
import 'highlight.dart';

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: defaultPadding, horizontal: defaultPadding / 2),
      child: Responsive.isMobileLarge(context)
          ? const Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Highlight(
                      counter: AnimatedCounter(count: 120, text: '+'),
                      label: 'Subscribers'),
                  Highlight(
                      counter: AnimatedCounter(count: 30, text: '+'),
                      label: 'Videos'),
                ],
              ),
              SizedBox(height: defaultPadding / 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Highlight(
                      counter: AnimatedCounter(count: 10, text: '+'),
                      label: 'Github Projects'),
                  Highlight(
                      counter: AnimatedCounter(count: 500, text: '+'),
                      label: 'Views')
                ],
              )
            ])
          : const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Highlight(
                    counter: AnimatedCounter(count: 120, text: '+'),
                    label: 'Subscribers'),
                Highlight(
                    counter: AnimatedCounter(count: 30, text: '+'),
                    label: 'Videos'),
                Highlight(
                    counter: AnimatedCounter(count: 10, text: '+'),
                    label: 'Github Projects'),
                Highlight(
                    counter: AnimatedCounter(count: 500, text: '+'),
                    label: 'Views'),
              ],
            ),
    );
  }
}
