import 'package:test_proj/feature/hotel/data/api/hotel_api.dart';
import 'package:test_proj/feature/hotel/domain/entity/hotel.dart';
import 'package:test_proj/feature/hotel/domain/repository/hotel_repository.dart';

class HotelRepositoryImpl implements HotelRepository {
  final HotelApi _hotelApi;

  HotelRepositoryImpl({
    required HotelApi hotelApi,
  }) : _hotelApi = hotelApi;

  @override
  Future<Hotel> getHotel() async {
    final model = await _hotelApi.getHotel();
    return model.toEntity();
  }
}
