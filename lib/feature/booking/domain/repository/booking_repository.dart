import 'package:test_proj/feature/booking/domain/entity/booking.dart';

abstract interface class BookingRepository {
  Future<Booking> getBooking();
}