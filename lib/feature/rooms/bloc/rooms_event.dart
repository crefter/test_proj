part of 'rooms_bloc.dart';

@immutable
sealed class RoomsEvent {}

class RoomsLoad extends RoomsEvent {}
