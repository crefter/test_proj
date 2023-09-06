import 'package:test_proj/feature/hotel/domain/entity/hotel.dart';

abstract interface class HotelRepository {
  Future<Hotel> getHotel();
}
