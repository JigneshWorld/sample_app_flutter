import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_app_flutter/state_selection/data/mock_data.dart';
import 'package:sample_app_flutter/state_selection/models/models.dart';

part 'state_selection_bloc.freezed.dart';
part 'state_selection_event.dart';
part 'state_selection_state.dart';

class StateSelectionBloc
    extends Bloc<StateSelectionEvent, StateSelectionState> {
  StateSelectionBloc() : super(const StateSelectionState()) {
    on<LoadContriesEvent>(_onLoadContries);
    on<LoadStatesEvent>(_onLoadStates);
    on<CountrySelectedEvent>(_onCountrySelected);
    on<StateSelectedEvent>(_onStateSelected);
  }

  Future<void> _onLoadContries(
    LoadContriesEvent event,
    Emitter<StateSelectionState> emit,
  ) async {
    emit(state.copyWith(country: const DropdownState.loading()));
    emit(
      state.copyWith(
        country: const DropdownState.options([...countries]),
      ),
    );
  }

  Future<void> _onCountrySelected(
    CountrySelectedEvent event,
    Emitter<StateSelectionState> emit,
  ) async {
    final updatedCountry = DropdownState.selected(
      (state.country as HasOptions<Country>).options,
      event.country,
    );
    emit(
      state.copyWith(
        country: updatedCountry,
        state: const DropdownState.initial(),
      ),
    );
    add(const LoadStatesEvent());
  }

  Future<void> _onStateSelected(
    StateSelectedEvent event,
    Emitter<StateSelectionState> emit,
  ) async {
    final updatedState = DropdownState.selected(
      (state.state as HasOptions<State>).options,
      event.state,
    );
    emit(state.copyWith(state: updatedState));
  }

  Future<void> _onLoadStates(
    LoadStatesEvent event,
    Emitter<StateSelectionState> emit,
  ) async {
    emit(state.copyWith(state: const DropdownState.loading()));
    final selectedCountry =
        state.country.whenOrNull(selected: (options, selected) => selected);
    final states = countryStates[selectedCountry] ?? <State>[];
    emit(state.copyWith(state: DropdownState.options([...states])));
  }
}
