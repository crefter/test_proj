import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:test_proj/feature/booking/data/model/booking_model.dart';

part 'booking_api.g.dart';

@RestApi(baseUrl: "https://run.mocky.io/v3/")
abstract class BookingApi {
  factory BookingApi(Dio dio, {String baseUrl}) = _BookingApi;
  
  @GET("/e8868481-743f-4eb2-a0d7-2bc4012275c8")
  Future<BookingModel> getBooking();
}