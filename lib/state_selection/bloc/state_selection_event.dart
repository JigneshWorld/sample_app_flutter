part of 'state_selection_bloc.dart';

@freezed
class StateSelectionEvent with _$StateSelectionEvent {
  const factory StateSelectionEvent.loadCountries() = LoadContriesEvent;
  const factory StateSelectionEvent.countrySelected(Country country) =
      CountrySelectedEvent;
  const factory StateSelectionEvent.loadStates() = LoadStatesEvent;
  const factory StateSelectionEvent.stateSelected(State state) =
      StateSelectedEvent;
}
