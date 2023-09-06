import 'package:json_annotation/json_annotation.dart';
import 'package:test_proj/core/util/money_formatter.dart';
import 'package:test_proj/feature/hotel/domain/entity/hotel.dart';

part 'hotel_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class HotelModel {
  HotelModel({
    required this.id,
    required this.name,
    required this.adress,
    required this.minimalPrice,
    required this.priceForIt,
    required this.rating,
    required this.ratingName,
    required this.imageUrls,
    required this.aboutTheHotel,
  });

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);

  final int id;
  final String name;
  final String adress;
  final int minimalPrice;
  final String priceForIt;
  final int rating;
  final String ratingName;
  final List<String> imageUrls;
  final AboutTheHotel aboutTheHotel;

  Map<String, dynamic> toJson() => _$HotelModelToJson(this);

  Hotel toEntity() {
    final price = MoneyFormatter.format(minimalPrice);
    return Hotel(
      id: id,
      name: name,
      address: adress,
      minimalPrice: price,
      priceForIt: priceForIt,
      rating: rating,
      ratingName: ratingName,
      imageUrls: imageUrls,
      aboutTheHotel: HotelInformation(
        description: aboutTheHotel.description,
        peculiarities: aboutTheHotel.peculiarities,
      ),
    );
  }
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class AboutTheHotel {
  AboutTheHotel({
    required this.description,
    required this.peculiarities,
  });

  factory AboutTheHotel.fromJson(Map<String, dynamic> json) =>
      _$AboutTheHotelFromJson(json);

  final String description;
  final List<String> peculiarities;

  Map<String, dynamic> toJson() => _$AboutTheHotelToJson(this);
}
