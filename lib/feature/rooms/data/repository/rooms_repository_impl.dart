import 'package:test_proj/feature/rooms/data/api/rooms_api.dart';
import 'package:test_proj/feature/rooms/domain/entity/room.dart';
import 'package:test_proj/feature/rooms/domain/repository/rooms_repository.dart';

class RoomsRepositoryImpl implements RoomsRepository {
  final RoomsApi _roomsApi;

  RoomsRepositoryImpl({
    required RoomsApi roomsApi,
  }) : _roomsApi = roomsApi;

  @override
  Future<List<Room>> getRooms() async {
    final roomList = await _roomsApi.getRooms();
    final rooms = roomList.rooms.map<Room>((model) => model.toEntity()).toList();
    return rooms;
  }
}
