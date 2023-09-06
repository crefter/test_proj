import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';
import 'package:test_proj/feature/hotel/bloc/hotel_bloc.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelBloc, HotelState>(
      builder: (context, state) {
        return switch (state) {
          HotelLoaded(:final hotel) => Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'от ${hotel.minimalPrice} ₽',
                  style: Theme.of(context).textTheme.price,
                ),
                const SizedBox(width: 8),
                Text(
                  'за тур с перелётом',
                  style: Theme.of(context).textTheme.prompt,
                ),
              ],
            ),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}
