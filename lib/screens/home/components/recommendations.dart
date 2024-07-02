import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/recommendation.dart';
import 'recommendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: defaultPadding),
          Text('Recommendations',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold)),
          const Divider(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  demoRecommendations.length,
                  (index) => Padding(
                        padding:
                            const EdgeInsets.only(right: defaultPadding / 2),
                        child: RecommendationCard(
                            recommendation: demoRecommendations[index]),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}
