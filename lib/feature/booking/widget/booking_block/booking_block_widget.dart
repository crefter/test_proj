import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_proj/core/widgets/card_widget.dart';
import 'package:test_proj/feature/booking/bloc/booking_bloc.dart';
import 'package:test_proj/feature/booking/widget/booking_block/booking_block_row_widget.dart';

class BookingBlockWidget extends StatelessWidget {
  const BookingBlockWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        return switch (state) {
          BookingLoaded(:final booking) => CardWidget(
              isRounded: true,
              hasBorder: false,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 16,
                ),
                child: Column(
                  children: [
                    BookingBlockRowWidget(
                      description: "Вылет из",
                      value: booking.departure,
                    ),
                    const SizedBox(height: 16),
                    BookingBlockRowWidget(
                      description: "Страна, город",
                      value: booking.arrivalCountry,
                    ),
                    const SizedBox(height: 16),
                    BookingBlockRowWidget(
                      description: "Даты",
                      value:
                          "${booking.tourDateStart} - ${booking.tourDateStop}",
                    ),
                    const SizedBox(height: 16),
                    BookingBlockRowWidget(
                      description: "Кол-во ночей",
                      value: "${booking.numberOfNights} ночей",
                    ),
                    const SizedBox(height: 16),
                    BookingBlockRowWidget(
                      description: "Отель",
                      value: booking.hotelName,
                    ),
                    const SizedBox(height: 16),
                    BookingBlockRowWidget(
                      description: "Номер",
                      value: booking.room,
                    ),
                    const SizedBox(height: 16),
                    BookingBlockRowWidget(
                      description: "Питание",
                      value: booking.nutrition,
                    ),
                  ],
                ),
              ),
            ),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}
