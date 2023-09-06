import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';
import 'package:test_proj/core/widgets/card_widget.dart';
import 'package:test_proj/feature/hotel/bloc/hotel_bloc.dart';
import 'package:test_proj/feature/hotel/widgets/about_hotel/list_facilities_widget.dart';
import 'package:test_proj/core/widgets/peculiarities_widget.dart';

class AboutHotelWidget extends StatelessWidget {
  const AboutHotelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      isRounded: true,
      hasBorder: false,
      child: BlocBuilder<HotelBloc, HotelState>(
        builder: (context, state) {
          return switch (state) {
            HotelLoaded(:final hotel) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    'Об отеле',
                    style: Theme.of(context).textTheme.header,
                  ),
                  const SizedBox(height: 16),
                  PeculiaritiesWidget(
                    peculiarities: hotel.aboutTheHotel.peculiarities,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    hotel.aboutTheHotel.description,
                    style: Theme.of(context).textTheme.regular,
                  ),
                  const SizedBox(height: 16),
                  ListFacilitiesWidget(),
                  const SizedBox(height: 16),
                ],
              ),
            _ => const SizedBox.shrink(),
          };
        },
      ),
    );
  }
}
