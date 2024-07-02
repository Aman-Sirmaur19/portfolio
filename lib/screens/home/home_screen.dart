import 'package:flutter/material.dart';

import '../../constants.dart';
import '../main_screen.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/highlight_info.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        HighlightsInfo(),
        SizedBox(height: defaultPadding / 2),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
