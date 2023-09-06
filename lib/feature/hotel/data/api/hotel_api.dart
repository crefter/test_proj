import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:test_proj/feature/hotel/data/model/hotel_model.dart';

part 'hotel_api.g.dart';

@RestApi(baseUrl: 'https://run.mocky.io/v3/')
abstract class HotelApi {
  factory HotelApi(Dio dio, {String baseUrl}) = _HotelApi;

  @GET("/35e0d18e-2521-4f1b-a575-f0fe366f66e3")
  Future<HotelModel> getHotel();
}
