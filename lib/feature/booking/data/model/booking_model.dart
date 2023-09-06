import 'package:json_annotation/json_annotation.dart';
import 'package:test_proj/core/util/money_formatter.dart';
import 'package:test_proj/feature/booking/domain/entity/booking.dart';

part 'booking_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class BookingModel {
  BookingModel({
    required this.id,
    required this.hotelName,
    required this.hotelAdress,
    required this.horating,
    required this.ratingName,
    required this.departure,
    required this.arrivalCountry,
    required this.tourDateStart,
    required this.tourDateStop,
    required this.numberOfNights,
    required this.room,
    required this.nutrition,
    required this.tourPrice,
    required this.fuelCharge,
    required this.serviceCharge,
  });

  final int id;
  final String hotelName;
  final String hotelAdress;
  final int horating;
  final String ratingName;
  final String departure;
  final String arrivalCountry;
  final String tourDateStart;
  final String tourDateStop;
  final int numberOfNights;
  final String room;
  final String nutrition;
  final int tourPrice;
  final int fuelCharge;
  final int serviceCharge;

  factory BookingModel.fromJson(Map<String, dynamic> json) =>
      _$BookingModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookingModelToJson(this);

  Booking toEntity() {
    final tourPrice = MoneyFormatter.format(this.tourPrice);
    final fuelCharge = MoneyFormatter.format(this.fuelCharge);
    final serviceCharge = MoneyFormatter.format(this.serviceCharge);
    return Booking(
      id: id,
      hotelName: hotelName,
      hotelAddress: hotelAdress,
      hotelRating: horating,
      ratingName: ratingName,
      departure: departure,
      arrivalCountry: arrivalCountry,
      tourDateStart: tourDateStart,
      tourDateStop: tourDateStop,
      numberOfNights: numberOfNights,
      room: room,
      nutrition: nutrition,
      tourPrice: tourPrice,
      fuelCharge: fuelCharge,
      serviceCharge: serviceCharge,
    );
  }
}
