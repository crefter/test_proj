import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_proj/app/di.dart';
import 'package:test_proj/core/widgets/scaffold_with_appbar.dart';
import 'package:test_proj/feature/booking/bloc/booking_bloc.dart';
import 'package:test_proj/feature/booking/bloc/tourists_bloc.dart';
import 'package:test_proj/feature/booking/bloc/tourists_validate_bloc.dart';
import 'package:test_proj/feature/booking/widget/booking_block/booking_block_widget.dart';
import 'package:test_proj/feature/booking/widget/customer_block/customer_information_block_widget.dart';
import 'package:test_proj/feature/booking/widget/hotel_information_widget.dart';
import 'package:test_proj/feature/booking/widget/total_price_block/total_price_block_widget.dart';
import 'package:test_proj/feature/booking/widget/tourists_inforormation_block/tourists_information_block_widget.dart';

@RoutePage()
class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TouristsBloc>(
          create: (context) => TouristsBloc(),
        ),
        BlocProvider<BookingBloc>(
          create: (context) => BookingBloc(
            bookingRepository: di.bookingRepository,
          )..add(BookingLoad()),
        ),
        BlocProvider<TouristsValidateBloc>(
          create: (context) => TouristsValidateBloc(),
        ),
      ],
      child: BlocProvider<BookingBloc>(
        create: (context) => BookingBloc(
          bookingRepository: di.bookingRepository,
        )..add(BookingLoad()),
        child: ScaffoldWithAppbar(
          hasAppBarIcon: true,
          appBarText: 'Бронирование',
          body: BlocBuilder<BookingBloc, BookingState>(
            builder: (context, state) {
              return Form(
                child: switch (state) {
                  BookingLoaded() => ListView(
                      children: const [
                        SizedBox(height: 8),
                        HotelInformationWidget(),
                        SizedBox(height: 8),
                        BookingBlockWidget(),
                        SizedBox(height: 8),
                        CustomerInformationBlockWidget(),
                        SizedBox(height: 8),
                        TouristsInformationBlockWidget(),
                        SizedBox(height: 8),
                        TotalPriceBlockWidget(),
                      ],
                    ),
                  _ => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
