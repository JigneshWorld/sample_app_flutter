import 'package:bloc_test/bloc_test.dart';
import 'package:sample_app_flutter/state_selection/data/mock_data.dart';
import 'package:sample_app_flutter/state_selection/models/country.dart';
import 'package:sample_app_flutter/state_selection/state_selection.dart';
import 'package:test/test.dart';

void main() {
  group('StateSelectionBloc', () {
    late StateSelectionBloc stateSelectionBloc;

    setUp(() {
      stateSelectionBloc = StateSelectionBloc();
    });

    test('initial state is correct', () {
      expect(stateSelectionBloc.state, const StateSelectionState());
    });

    blocTest<StateSelectionBloc, StateSelectionState>(
      'emits country[loading, options] when loadCountries',
      build: () => stateSelectionBloc,
      act: (bloc) => bloc.add(const StateSelectionEvent.loadCountries()),
      expect: () => <StateSelectionState>[
        const StateSelectionState(
          country: DropdownState.loading(),
        ),
        const StateSelectionState(
          country: DropdownState.options(countries),
        )
      ],
    );

    blocTest<StateSelectionBloc, StateSelectionState>(
      'emits state[loading, options] when state is country.selected and loadStates',
      build: () => stateSelectionBloc,
      seed: () => StateSelectionState(
        country: DropdownState<Country>.selected(countries, countries.first),
      ),
      act: (bloc) => bloc.add(const StateSelectionEvent.loadStates()),
      expect: () => <StateSelectionState>[
        StateSelectionState(
          country: DropdownState<Country>.selected(countries, countries.first),
          state: const DropdownState.loading(),
        ),
        StateSelectionState(
          country: DropdownState<Country>.selected(countries, countries.first),
          state: DropdownState.options(countryStates[countries.first] ?? []),
        )
      ],
    );

    blocTest<StateSelectionBloc, StateSelectionState>(
      'emits state[initial, loading, options] when countrySelected',
      build: () => stateSelectionBloc,
      seed: () => const StateSelectionState(
        country: DropdownState<Country>.options(countries),
      ),
      act: (bloc) =>
          bloc.add(StateSelectionEvent.countrySelected(countries.first)),
      expect: () => <StateSelectionState>[
        StateSelectionState(
          country: DropdownState<Country>.selected(countries, countries.first),
          state: const DropdownState.initial(),
        ),
        StateSelectionState(
          country: DropdownState<Country>.selected(countries, countries.first),
          state: const DropdownState.loading(),
        ),
        StateSelectionState(
          country: DropdownState<Country>.selected(countries, countries.first),
          state: DropdownState.options(countryStates[countries.first] ?? []),
        )
      ],
    );

    blocTest<StateSelectionBloc, StateSelectionState>(
      'emits state[selected] when state is country.selected and stateSelected',
      build: () => stateSelectionBloc,
      seed: () => StateSelectionState(
        country: DropdownState<Country>.selected(countries, countries.first),
        state: DropdownState.options(countryStates[countries.first] ?? []),
      ),
      act: (bloc) => bloc.add(
        StateSelectionEvent.stateSelected(
          (countryStates[countries.first] ?? []).first,
        ),
      ),
      expect: () => <StateSelectionState>[
        StateSelectionState(
          country: DropdownState<Country>.selected(countries, countries.first),
          state: DropdownState.selected(
            countryStates[countries.first] ?? [],
            (countryStates[countries.first] ?? []).first,
          ),
        ),
      ],
    );
  });
}
