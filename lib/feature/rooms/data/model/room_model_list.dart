import 'package:json_annotation/json_annotation.dart';
import 'package:test_proj/feature/rooms/data/model/room_model.dart';

part 'room_model_list.g.dart';

@JsonSerializable()
class RoomModelList {
  RoomModelList({
    required this.rooms,
  });

  final List<RoomModel> rooms;

  factory RoomModelList.fromJson(Map<String, dynamic> json) =>
      _$RoomModelListFromJson(json);

  Map<String, dynamic> toJson() => _$RoomModelListToJson(this);
}
