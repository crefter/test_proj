import 'package:flutter/material.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';
import 'package:test_proj/feature/rooms/domain/entity/room.dart';

class RoomPriceWidget extends StatelessWidget {
  const RoomPriceWidget({
    super.key,
    required this.room,
  });

  final Room room;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "${room.price} ₽",
          style: Theme.of(context).textTheme.price,
        ),
        const SizedBox(width: 8),
        Text(
          room.pricePer.toLowerCase(),
          style: Theme.of(context).textTheme.prompt,
        ),
      ],
    );
  }
}