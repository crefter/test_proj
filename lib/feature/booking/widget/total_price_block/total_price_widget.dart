import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_proj/core/widgets/card_widget.dart';
import 'package:test_proj/feature/booking/bloc/booking_bloc.dart';
import 'package:test_proj/feature/booking/widget/total_price_block/total_price_row_widget.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        return switch (state) {
          BookingLoaded(:final booking) => CardWidget(
              hasBorder: false,
              isRounded: true,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  bottom: 16.0,
                ),
                child: Column(
                  children: [
                    TotalPriceRowWidget(
                      name: 'Тур',
                      value: booking.tourPrice,
                    ),
                    const SizedBox(height: 16),
                    TotalPriceRowWidget(
                      name: 'Топливный сбор',
                      value: booking.fuelCharge,
                    ),
                    const SizedBox(height: 16),
                    TotalPriceRowWidget(
                      name: 'Сервисный сбор',
                      value: booking.serviceCharge,
                    ),
                    const SizedBox(height: 16),
                    TotalPriceRowWidget(
                      name: 'К оплате',
                      value: state.totalPrice.toString(),
                      isTotal: true,
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
