import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../../constants.dart';

import '../main_screen.dart';

import 'components/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(children: [HomeBanner()]);
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!,
      child: Row(
        children: [
          const FlutterCodedText(),
          const SizedBox(width: defaultPadding / 2),
          const Text('I build '),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText('StudyBuddy App for college students.',
                speed: const Duration(milliseconds: 60)),
            TyperAnimatedText(
                'Attendance Tracker App for tracking your class attendance in school / college.',
                speed: const Duration(milliseconds: 60)),
            TyperAnimatedText('Responsive web and mobile app.',
                speed: const Duration(milliseconds: 60)),
          ]),
          const SizedBox(width: defaultPadding / 2),
          const FlutterCodedText(),
        ],
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(
      text: '<',
      children: [
        TextSpan(text: 'flutter', style: TextStyle(color: primaryColor)),
        TextSpan(text: '>')
      ],
    ));
  }
}
