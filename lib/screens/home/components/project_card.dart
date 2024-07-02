import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

import '../../../constants.dart';
import '../../../models/project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: secondaryColor),
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5, color: bodyTextColor),
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: const Text('Explore >>',
                  style: TextStyle(color: primaryColor)))
        ],
      ),
    );
  }
}
