import 'package:flutter/material.dart';
import 'package:hawaa_app/shared/models/headline_model.dart';

import '../../../../../core/utils/styles.dart';

class Headline extends StatelessWidget {
  const Headline({super.key, required this.headlineModel});
final HeadlineModel headlineModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            headlineModel.largeText,
            style: Styles.textStyle24.copyWith(
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          Text(
            headlineModel.smallText,
            style: Styles.textStyle14,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}