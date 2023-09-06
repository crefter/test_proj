import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_proj/core/widgets/card_widget.dart';
import 'package:test_proj/core/widgets/carousel.dart';
import 'package:test_proj/core/widgets/hotel_description/hotel_description_widget.dart';
import 'package:test_proj/feature/hotel/bloc/hotel_bloc.dart';
import 'package:test_proj/feature/hotel/widgets/main_hotel_information/price_widget.dart';

class MainHotelInformationWidget extends StatelessWidget {
  const MainHotelInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CardWidget(
      isRounded: false,
      hasBorder: false,
      child: BlocBuilder<HotelBloc, HotelState>(
        builder: (context, state) {
          return switch (state) {
            HotelLoaded(:final hotel) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Carousel(
                  width: size.width * 0.9146,
                  images: hotel.imageUrls,
                ),
                HotelDescriptionWidget(
                  rating: hotel.rating,
                  ratingName: hotel.ratingName,
                  address: hotel.address,
                  name: hotel.name,
                ),
                const PriceWidget(),
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
