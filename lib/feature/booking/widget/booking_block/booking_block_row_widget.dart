import 'package:flutter/material.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';

class BookingBlockRowWidget extends StatelessWidget {
  const BookingBlockRowWidget({
    super.key,
    required this.description,
    required this.value,
  });

  final String description;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Text(
            description,
            style: Theme.of(context).textTheme.bookingDescription,
          ),
        ),
        Flexible(
          flex: 3,
          fit: FlexFit.tight,
          child: Text(
            value,
            style: Theme.of(context).textTheme.bookingData,
          ),
        ),
      ],
    );
  }
}
