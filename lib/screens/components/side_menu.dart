import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

import 'coding.dart';
import 'skills.dart';
import 'my_info.dart';
import 'knowledge.dart';
import 'area_info_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    int age = DateTime.now().year - 2003;
    return Drawer(
      child: SafeArea(
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
                  const SizedBox(height: defaultPadding),
                  const Coding(),
                  const Knowledge(),
                  const Divider(),
                  const SizedBox(height: defaultPadding / 2),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          const Text(
                            'Download CV',
                            style: TextStyle(color: bodyTextColor),
                          ),
                          const SizedBox(width: defaultPadding / 2),
                          SvgPicture.asset('assets/icons/download.svg')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: defaultPadding),
                    color: const Color(0xFF24242E),
                    child: Row(
                      children: [
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/youtube.svg',
                              width: 20),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/github.svg'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/instagram.svg',
                              width: 20),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/twitter.svg'),
                        ),
                        const Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
