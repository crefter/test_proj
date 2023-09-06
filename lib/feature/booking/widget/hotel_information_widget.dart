import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_proj/core/widgets/card_widget.dart';
import 'package:test_proj/core/widgets/hotel_description/hotel_description_widget.dart';
import 'package:test_proj/feature/booking/bloc/booking_bloc.dart';

class HotelInformationWidget extends StatelessWidget {
  const HotelInformationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) => switch (state) {
        BookingLoaded(:final booking) => CardWidget(
            isRounded: true,
            hasBorder: false,
            child: HotelDescriptionWidget(
              rating: booking.hotelRating,
              ratingName: booking.ratingName,
              address: booking.hotelAddress,
              name: booking.hotelName,
            ),
          ),
        _ => const SizedBox.shrink(),
      },
    );
  }
}
