import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_proj/core/util/money_formatter.dart';
import 'package:test_proj/feature/booking/domain/entity/booking.dart';
import 'package:test_proj/feature/booking/domain/repository/booking_repository.dart';

part 'booking_event.dart';

part 'booking_state.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final BookingRepository _bookingRepository;

  BookingBloc({required BookingRepository bookingRepository})
      : _bookingRepository = bookingRepository,
        super(BookingInitial()) {
    on<BookingEvent>((event, emit) async => switch (event) {
          BookingLoad() => await _onLoad(event, emit),
        });
  }

  Future<void> _onLoad(
    BookingLoad event,
    Emitter<BookingState> emit,
  ) async {
    emit(BookingLoading());
    final booking = await _bookingRepository.getBooking();
    emit(BookingLoaded(booking: booking));
  }
}
