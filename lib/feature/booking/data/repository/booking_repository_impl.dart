import 'package:test_proj/feature/booking/data/api/booking_api.dart';
import 'package:test_proj/feature/booking/domain/entity/booking.dart';
import 'package:test_proj/feature/booking/domain/repository/booking_repository.dart';

class BookingRepositoryImpl implements BookingRepository {
  final BookingApi _bookingApi;

  BookingRepositoryImpl({
    required BookingApi bookingApi,
  }) : _bookingApi = bookingApi;

  @override
  Future<Booking> getBooking() async {
    final model = await _bookingApi.getBooking();
    return model.toEntity();
  }
}
