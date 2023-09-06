part of 'rooms_bloc.dart';

@immutable
sealed class RoomsState {}

class RoomsInitial extends RoomsState {}

class RoomsLoading extends RoomsState {}

class RoomsLoaded extends RoomsState {
  final List<Room> rooms;

  RoomsLoaded({
    required this.rooms,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomsLoaded &&
          runtimeType == other.runtimeType &&
          rooms == other.rooms;

  @override
  int get hashCode => rooms.hashCode;
}
