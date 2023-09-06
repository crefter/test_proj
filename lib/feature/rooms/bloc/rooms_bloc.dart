import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_proj/feature/rooms/domain/entity/room.dart';
import 'package:test_proj/feature/rooms/domain/repository/rooms_repository.dart';

part 'rooms_event.dart';

part 'rooms_state.dart';

class RoomsBloc extends Bloc<RoomsEvent, RoomsState> {
  final RoomsRepository _repository;

  RoomsBloc({required RoomsRepository repository})
      : _repository = repository,
        super(RoomsInitial()) {
    on<RoomsEvent>(
      (event, emit) async => switch (event) {
        RoomsLoad() => await _onLoad(event, emit),
      },
    );
  }

  Future<void> _onLoad(RoomsLoad event, Emitter<RoomsState> emit) async {
    emit(RoomsLoading());
    final rooms = await _repository.getRooms();
    emit(RoomsLoaded(rooms: rooms));
  }
}
