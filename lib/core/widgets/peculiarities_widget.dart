import 'package:flutter/material.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';

class PeculiaritiesWidget extends StatelessWidget {
  const PeculiaritiesWidget({
    super.key,
    required this.peculiarities,
  });

  final List<String> peculiarities;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        ...peculiarities.map(
          (str) => DecoratedBox(
            decoration: ShapeDecoration(
              color: const Color(0xFFFBFBFC),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 10.0,
              ),
              child: Text(
                str,
                style: Theme.of(context).textTheme.prompt,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
