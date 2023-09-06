import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_proj/feature/booking/domain/entity/tourist.dart';

part 'tourists_event.dart';

part 'tourists_state.dart';

class TouristsBloc extends Bloc<TouristsEvent, TouristsState> {
  TouristsBloc() : super(TouristsList(tourists: [Tourist.empty()])) {
    on<TouristsEvent>((event, emit) async => switch (event) {
          TouristsAdd() => await _onAdd(event, emit),
        });
  }

  Future<void> _onAdd(
    TouristsAdd event,
    Emitter<TouristsState> emit,
  ) async {
    final tourists = switch (state) {
      TouristsList(:final tourists) => tourists,
    };
    final newTourists = [
      ...tourists,
      Tourist.empty(),
    ];
    emit(TouristsList(tourists: newTourists));
  }
}
