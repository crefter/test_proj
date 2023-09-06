import 'package:dio/dio.dart';
import 'package:test_proj/feature/booking/data/api/booking_api.dart';
import 'package:test_proj/feature/booking/data/repository/booking_repository_impl.dart';
import 'package:test_proj/feature/booking/domain/repository/booking_repository.dart';
import 'package:test_proj/feature/hotel/data/api/hotel_api.dart';
import 'package:test_proj/feature/hotel/data/repository/hotel_repository.dart';
import 'package:test_proj/feature/hotel/domain/repository/hotel_repository.dart';
import 'package:test_proj/feature/rooms/data/api/rooms_api.dart';
import 'package:test_proj/feature/rooms/data/repository/rooms_repository_impl.dart';
import 'package:test_proj/feature/rooms/domain/repository/rooms_repository.dart';

final di = DiContainer();

class DiContainer {
  Dio get dio => Dio();

  HotelApi get hotelApi => HotelApi(dio);

  HotelRepository get hotelRepository =>
      HotelRepositoryImpl(hotelApi: hotelApi);

  RoomsApi get roomsApi => RoomsApi(dio);

  RoomsRepository get roomsRepository =>
      RoomsRepositoryImpl(roomsApi: roomsApi);

  BookingApi get bookingApi => BookingApi(dio);

  BookingRepository get bookingRepository =>
      BookingRepositoryImpl(bookingApi: bookingApi);
}
