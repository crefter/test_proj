import 'package:json_annotation/json_annotation.dart';
import 'package:test_proj/core/util/money_formatter.dart';
import 'package:test_proj/feature/rooms/domain/entity/room.dart';

part 'room_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RoomModel {
  RoomModel({
    required this.id,
    required this.name,
    required this.price,
    required this.pricePer,
    required this.peculiarities,
    required this.imageUrls,
  });

  final int id;
  final String name;
  final int price;
  final String pricePer;
  final List<String> peculiarities;
  final List<String> imageUrls;

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoomModelToJson(this);

  Room toEntity() {
    final price = MoneyFormatter.format(this.price);
    return Room(
      id: id,
      name: name,
      price: price,
      pricePer: pricePer,
      peculiarities: peculiarities,
      imageUrls: imageUrls,
    );
  }
}
