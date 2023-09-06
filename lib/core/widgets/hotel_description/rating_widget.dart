import 'package:flutter/material.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.rating,
    required this.ratingName,
  });

  final int rating;
  final String ratingName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 15,
          height: 15,
          decoration: const ShapeDecoration(
            color: Color(0xFFFFA800),
            shape: StarBorder(
              points: 5,
              innerRadiusRatio: 0.45,
              pointRounding: 0.20,
              valleyRounding: 0,
              rotation: 0,
              squash: 0,
            ),
          ),
        ),
        const SizedBox(width: 2),
        Text(
          '$rating $ratingName',
          style: Theme.of(context).textTheme.rating,
        ),
      ],
    );
  }
}
