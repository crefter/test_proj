part of 'hotel_bloc.dart';

@immutable
sealed class HotelState {}

class HotelInitial extends HotelState {}

class HotelLoading extends HotelState {}

class HotelLoaded extends HotelState {
  final Hotel hotel;

  HotelLoaded({
    required this.hotel,
  });
}
