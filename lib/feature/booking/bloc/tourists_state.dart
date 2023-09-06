part of 'tourists_bloc.dart';

@immutable
sealed class TouristsState {}

class TouristsList extends TouristsState {
  final List<Tourist> tourists;

  TouristsList({
    required this.tourists,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TouristsList &&
          runtimeType == other.runtimeType &&
          tourists == other.tourists;

  @override
  int get hashCode => tourists.hashCode;

  TouristsList copyWith(List<Tourist>? tourists) {
    return TouristsList(
      tourists: tourists ?? this.tourists,
    );
  }
}
