import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tourists_validate_event.dart';

part 'tourists_validate_state.dart';

class TouristsValidateBloc
    extends Bloc<TouristsValidateEvent, TouristsValidateState> {
  TouristsValidateBloc() : super(TouristsValidateInitial(errors: [])) {
    on<TouristsValidateEvent>((event, emit) async => switch (event) {
          TouristsValidateValid() => await _onValidate(event, emit),
          TouristsValidateAdd() => await _onAdd(event, emit),
        });
  }

  Future<void> _onValidate(
    TouristsValidateValid event,
    Emitter<TouristsValidateState> emit,
  ) async {
    final List<bool> errors = switch (state) {
      TouristsValidateInitial(:final errors) => errors,
      _ => [],
    };
    if (errors.isEmpty) {
      emit(TouristsValidateNoErrors());
    } else {
      emit(TouristsValidateErrors());
    }
  }

  Future<void> _onAdd(
    TouristsValidateAdd event,
    Emitter<TouristsValidateState> emit,
  ) async {
    final List<bool> errors = switch (state) {
      TouristsValidateInitial(:final errors) => errors,
      _ => [],
    };
    emit(
      TouristsValidateInitial(
        errors: [...errors, true],
      ),
    );
  }
}
