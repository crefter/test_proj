import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:test_proj/feature/rooms/data/model/room_model_list.dart';

part 'rooms_api.g.dart';

@RestApi(baseUrl: "https://run.mocky.io/v3/")
abstract class RoomsApi {
  factory RoomsApi(Dio dio, {String baseUrl}) = _RoomsApi;
  
  @GET('/f9a38183-6f95-43aa-853a-9c83cbb05ecd')
  Future<RoomModelList> getRooms();
}