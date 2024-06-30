import 'package:flutter/material.dart';

import '../../constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/aman.png'),
            ),
            const Spacer(),
            Text(
              'Aman Kumar',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Text(
              'Flutter Developer and Mobile Development Lead @DCC NIT-A',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
