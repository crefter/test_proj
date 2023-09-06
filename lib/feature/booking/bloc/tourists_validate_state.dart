part of 'tourists_validate_bloc.dart';

@immutable
sealed class TouristsValidateState {}

class TouristsValidateInitial extends TouristsValidateState {
  final List<bool> errors;

  TouristsValidateInitial({
    required this.errors,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TouristsValidateInitial &&
          runtimeType == other.runtimeType &&
          errors == other.errors;

  @override
  int get hashCode => errors.hashCode;
}

class TouristsValidateNoErrors extends TouristsValidateState {}
class TouristsValidateErrors extends TouristsValidateState {}
