import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_proj/core/widgets/scaffold_with_appbar.dart';
import 'package:test_proj/feature/hotel/bloc/hotel_bloc.dart';
import 'package:test_proj/feature/hotel/widgets/about_hotel/about_hotel_widget.dart';
import 'package:test_proj/feature/hotel/widgets/button/button_to_room_widget.dart';
import 'package:test_proj/feature/hotel/widgets/main_hotel_information/main_hotel_information_widget.dart';

@RoutePage()
class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithAppbar(
      appBarText: 'Отель',
      body: BlocBuilder<HotelBloc, HotelState>(
        builder: (context, state) {
          return switch (state) {
            HotelLoaded() => ListView(
                children: const [
                  MainHotelInformationWidget(),
                  SizedBox(height: 8),
                  AboutHotelWidget(),
                  SizedBox(height: 12),
                  ButtonToRoomWidget()
                ],
              ),
            _ => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
          };
        },
      ),
    );
  }
}
