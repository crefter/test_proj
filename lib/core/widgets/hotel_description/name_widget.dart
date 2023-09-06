import 'package:flutter/material.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key, required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Theme.of(context).textTheme.header,
    );
  }
}
