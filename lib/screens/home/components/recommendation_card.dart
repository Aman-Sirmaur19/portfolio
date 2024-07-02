import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/recommendation.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
    required this.recommendation,
  });

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(recommendation.name!,
              style: Theme.of(context).textTheme.titleMedium),
          Text(recommendation.source!,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: bodyTextColor)),
          const SizedBox(height: defaultPadding / 2),
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
