part of 'booking_bloc.dart';

@immutable
sealed class BookingState {}

class BookingInitial extends BookingState {}

class BookingLoading extends BookingState {}

class BookingLoaded extends BookingState {
  final Booking booking;

  BookingLoaded({
    required this.booking,
  });

  String get totalPrice {
    final tourPrice = int.parse(
      booking.tourPrice.replaceAll(" ", ""),
    );
    final fuelCharge = int.parse(
      booking.fuelCharge.replaceAll(" ", ""),
    );
    final serviceCharge = int.parse(
      booking.serviceCharge.replaceAll(" ", ""),
    );
    final totalPrice = tourPrice + fuelCharge + serviceCharge;
    return MoneyFormatter.format(totalPrice);
  }
}
