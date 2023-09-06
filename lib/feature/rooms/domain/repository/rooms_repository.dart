import 'package:test_proj/feature/rooms/domain/entity/room.dart';

abstract interface class RoomsRepository {
  Future<List<Room>> getRooms();
}