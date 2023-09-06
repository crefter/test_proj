import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_proj/feature/hotel/domain/entity/hotel.dart';
import 'package:test_proj/feature/hotel/domain/repository/hotel_repository.dart';

part 'hotel_event.dart';

part 'hotel_state.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  final HotelRepository _hotelRepository;

  HotelBloc({required HotelRepository hotelRepository})
      : _hotelRepository = hotelRepository,
        super(HotelInitial()) {
    on<HotelEvent>((event, emit) => switch (event) {
          HotelLoad() => _onLoad(event, emit),
        });
  }

  Future<void> _onLoad(HotelLoad event, Emitter<HotelState> emit) async {
    emit(HotelLoading());
    final hotel = await _hotelRepository.getHotel();
    emit(HotelLoaded(hotel: hotel));
  }
}
