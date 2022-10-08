import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sample_app_flutter/cupid_api/cupid_api.dart';
import 'package:sample_app_flutter/state_selection/data/mock_data.dart';
import 'package:sample_app_flutter/state_selection/state_selection.dart';
import 'package:test/test.dart';

class MockCupidApiClient extends Mock implements CupidApiClient {}

void main() {
  group('StateSelectionBloc', () {
    late CupidApiClient apiClient;
    late StateSelectionBloc stateSelectionBloc;

    setUp(() {
      apiClient = MockCupidApiClient();
      stateSelectionBloc = StateSelectionBloc(apiClient);
      when(() => apiClient.getCountries())
          .thenAnswer((_) => Future.value([...countries]));
    });

    test('initial state is correct', () {
      expect(stateSelectionBloc.state, StateSelectionState.initial());
    });

    blocTest<StateSelectionBloc, StateSelectionState>(
      'emits country[loading, options] when loadCountries',
      build: () => stateSelectionBloc,
      act: (bloc) => bloc.add(const StateSelectionEvent.loadCountries()),
      expect: () => <StateSelectionState>[
        // ignore: prefer_const_constructors
        StateSelectionState(
          country: const DropdownState<Country>.loading(),
          state: const DropdownState<State>.initial(),
        ),
        // ignore: prefer_const_constructors
        StateSelectionState(
          country: const DropdownState<Country>.options(countries),
          state: const DropdownState<State>.initial(),
        )
      ],
    );

    blocTest<StateSelectionBloc, StateSelectionState>(
      '''
emits state[loading, options] when state is countryselected and loadStates
''',
      setUp: () {
        when(() => apiClient.getStates(countries.first.id)).thenAnswer(
          (_) => Future.value(countryStates[countries.first] ?? []),
        );
      },
      build: () => stateSelectionBloc,
      seed: () => StateSelectionState(
        country: DropdownState<Country>.selected(countries, countries.first),
        state: const DropdownState<State>.initial(),
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
      setUp: () {
        when(() => apiClient.getStates(countries.first.id)).thenAnswer(
          (_) => Future.value(countryStates[countries.first] ?? []),
        );
      },
      build: () => stateSelectionBloc,
      // ignore: prefer_const_constructors
      seed: () => StateSelectionState(
        country: const DropdownState<Country>.options(countries),
        state: const DropdownState<State>.initial(),
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
      '''
emits state[initial, loading, error] 
      when API Client throws StatesRequestFailure''',
      setUp: () {
        when(() => apiClient.getStates(countries.first.id))
            .thenThrow(StatesRequestFailure());
      },
      build: () => stateSelectionBloc,
      // ignore: prefer_const_constructors
      seed: () => StateSelectionState(
        country: const DropdownState<Country>.options(countries),
        state: const DropdownState<State>.initial(),
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
          state: const DropdownState.error(),
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
