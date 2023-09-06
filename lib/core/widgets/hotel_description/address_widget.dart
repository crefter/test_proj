import 'package:flutter/material.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({
    super.key, required this.address,
  });

  final String address;

  @override
  Widget build(BuildContext context) {
    return Text(
      address,
      style: Theme.of(context).textTheme.address,
    );
  }
}
