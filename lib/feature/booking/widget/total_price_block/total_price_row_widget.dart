import 'package:flutter/material.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';

class TotalPriceRowWidget extends StatelessWidget {
  const TotalPriceRowWidget({
    super.key,
    required this.name,
    required this.value,
    this.isTotal,
  });

  final String name;
  final String value;
  final bool? isTotal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.bookingDescription,
        ),
        Text(
          "$value ₽",
          style: isTotal ?? false
              ? Theme.of(context).textTheme.totalPrice
              : Theme.of(context).textTheme.bookingData,
        ),
      ],
    );
  }
}