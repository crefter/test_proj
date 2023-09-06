part of 'tourists_validate_bloc.dart';

@immutable
sealed class TouristsValidateEvent {}

class TouristsValidateAdd extends TouristsValidateEvent {}

class TouristsValidateValid extends TouristsValidateEvent {}
