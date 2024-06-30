import 'package:flutter/material.dart';

import '../../constants.dart';

import 'skills.dart';
import 'my_info.dart';
import 'area_info_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    int age = DateTime.now().year - 2003;
    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                const AreaInfoText(title: 'Residence', text: 'India'),
                const AreaInfoText(title: 'State', text: 'Bihar'),
                const AreaInfoText(title: 'City', text: 'Aurangabad'),
                AreaInfoText(title: 'Age', text: '$age'),
                const Skills(),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
