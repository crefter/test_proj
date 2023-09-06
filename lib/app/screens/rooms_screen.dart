import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_proj/app/di.dart';
import 'package:test_proj/core/widgets/scaffold_with_appbar.dart';
import 'package:test_proj/feature/hotel/bloc/hotel_bloc.dart';
import 'package:test_proj/feature/rooms/bloc/rooms_bloc.dart';
import 'package:test_proj/feature/rooms/widgets/room_widget.dart';

@RoutePage()
class RoomsScreen extends StatelessWidget {
  const RoomsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      RoomsBloc(repository: di.roomsRepository)
        ..add(
          RoomsLoad(),
        ),
      child: BlocBuilder<HotelBloc, HotelState>(
        builder: (context, state) {
          return switch(state) {
            HotelLoaded(:final hotel) =>
                ScaffoldWithAppbar(
                  hasAppBarIcon: true,
                  appBarText: hotel.name,
                  body: BlocBuilder<RoomsBloc, RoomsState>(
                    builder: (context, state) {
                      return switch (state) {
                        RoomsLoaded(:final rooms) =>
                            ListView(
                              children: [
                                const SizedBox(height: 8),
                                ...rooms.map<Widget>(
                                      (room) =>
                                      Column(
                                        children: [
                                          RoomWidget(
                                            room: room,
                                          ),
                                          const SizedBox(height: 8),
                                        ],
                                      ),
                                ),
                              ],
                            ),
                        _ =>
                        const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      };
                    },
                  ),
                ),
            _ => const SizedBox.shrink(),
          };
        },
      ),
    );
  }
}
