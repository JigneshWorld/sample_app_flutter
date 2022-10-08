import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_app_flutter/cupid_api/cupid_api.dart';

part 'state_selection_bloc.freezed.dart';
part 'state_selection_event.dart';
part 'state_selection_state.dart';

class StateSelectionBloc
    extends Bloc<StateSelectionEvent, StateSelectionState> {
  StateSelectionBloc(this._apiClient) : super(StateSelectionState.initial()) {
    on<LoadContriesEvent>(_onLoadContries);
    on<LoadStatesEvent>(_onLoadStates);
    on<CountrySelectedEvent>(_onCountrySelected);
    on<StateSelectedEvent>(_onStateSelected);
  }

  final CupidApiClient _apiClient;

  Future<void> _onLoadContries(
    LoadContriesEvent event,
    Emitter<StateSelectionState> emit,
  ) async {
    emit(state.copyWith(country: const DropdownState.loading()));
    try {
      final countries = await _apiClient.getCountries();
      emit(
        state.copyWith(country: DropdownState.options(countries)),
      );
    } catch (e, s) {
      log('failed to load countries', error: e, stackTrace: s);
      emit(state.copyWith(country: const DropdownState.error()));
    }
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
    final selectedCountryId = state.country.whenOrNull(
      selected: (options, selected) => selected.id,
    );
    if (selectedCountryId != null) {
      try {
        final states = await _apiClient.getStates(selectedCountryId);
        emit(
          state.copyWith(state: DropdownState.options(states)),
        );
      } catch (e, s) {
        log('failed to load states', error: e, stackTrace: s);
        emit(state.copyWith(state: const DropdownState.error()));
      }
    }
  }
}
