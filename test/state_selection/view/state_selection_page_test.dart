import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sample_app_flutter/cupid_api/cupid_api.dart';
import 'package:sample_app_flutter/state_selection/keys.dart';
import 'package:sample_app_flutter/state_selection/state_selection.dart';

import '../../helpers/helpers.dart';
import '../data/mock_data.dart';

class MockStateSelectionBloc
    extends MockBloc<StateSelectionEvent, StateSelectionState>
    implements StateSelectionBloc {}

class MockCupidApiClient extends Mock implements CupidApiClient {}

void main() {
  group('StateSelectionBloc', () {
    late CupidApiClient apiClient;
    setUp(() {
      apiClient = MockCupidApiClient();
    });
    testWidgets('renders StateSelectionView', (tester) async {
      when(() => apiClient.getCountries()).thenAnswer((_) => Future.value([]));
      await tester.pumpApp(
        RepositoryProvider.value(
          value: apiClient,
          child: const StateSelectionPage(),
        ),
      );
      expect(find.byType(StateSelectionView), findsOneWidget);
    });
  });

  group('StateSelectionView', () {
    late StateSelectionBloc stateSelectionBloc;

    setUp(() {
      stateSelectionBloc = MockStateSelectionBloc();
    });

    testWidgets('renders initial state', (tester) async {
      when(() => stateSelectionBloc.state)
          .thenReturn(StateSelectionState.initial());
      await tester.pumpApp(
        BlocProvider.value(
          value: stateSelectionBloc,
          child: const StateSelectionView(),
        ),
      );
      expect(find.text('Please wait...'), findsOneWidget);
      expect(find.text('Select Country First'), findsOneWidget);
    });

    testWidgets('renders Loading Countries & Select Country First',
        (tester) async {
      when(() => stateSelectionBloc.state).thenReturn(
        // ignore: prefer_const_constructors
        StateSelectionState(
          country: const DropdownState<Country>.loading(),
          state: const DropdownState<State>.initial(),
        ),
      );
      await tester.pumpApp(
        BlocProvider.value(
          value: stateSelectionBloc,
          child: const StateSelectionView(),
        ),
      );
      expect(find.text('Loading Countries'), findsOneWidget);
      expect(find.text('Select Country First'), findsOneWidget);
    });

    testWidgets('renders Select Country & Select Country First',
        (tester) async {
      when(() => stateSelectionBloc.state).thenReturn(
        // ignore: prefer_const_constructors
        StateSelectionState(
          country: const DropdownState<Country>.options(countries),
          state: const DropdownState<State>.initial(),
        ),
      );
      await tester.pumpApp(
        BlocProvider.value(
          value: stateSelectionBloc,
          child: const StateSelectionView(),
        ),
      );
      expect(find.text('Select Country'), findsOneWidget);
      expect(find.text('Select Country First'), findsOneWidget);
    });

    testWidgets('renders Selected Country & Loading States', (tester) async {
      when(() => stateSelectionBloc.state).thenReturn(
        StateSelectionState(
          country: DropdownState.selected(countries, countries.first),
          state: const DropdownState.loading(),
        ),
      );
      await tester.pumpApp(
        BlocProvider.value(
          value: stateSelectionBloc,
          child: const StateSelectionView(),
        ),
      );
      expect(find.text(countries.first.name), findsOneWidget);
      expect(find.text('Loading States'), findsOneWidget);
    });

    testWidgets('renders Selected Country & Select States', (tester) async {
      final states = countryStates[countries.first] ?? [];
      when(() => stateSelectionBloc.state).thenReturn(
        StateSelectionState(
          country: DropdownState.selected(countries, countries.first),
          state: DropdownState.options(states),
        ),
      );
      await tester.pumpApp(
        BlocProvider.value(
          value: stateSelectionBloc,
          child: const StateSelectionView(),
        ),
      );
      expect(find.text(countries.first.name), findsOneWidget);
      expect(find.text('Select State'), findsOneWidget);
    });

    testWidgets('renders Selected Country & State Selected', (tester) async {
      final states = countryStates[countries.first] ?? [];
      when(() => stateSelectionBloc.state).thenReturn(
        StateSelectionState(
          country: DropdownState.selected(countries, countries.first),
          state: DropdownState.selected(states, states.first),
        ),
      );
      await tester.pumpApp(
        BlocProvider.value(
          value: stateSelectionBloc,
          child: const StateSelectionView(),
        ),
      );
      expect(find.text(countries.first.name), findsOneWidget);
      expect(find.text(states.first.name), findsOneWidget);
    });

    testWidgets('renders Selected Country & States Failed', (tester) async {
      when(() => stateSelectionBloc.state).thenReturn(
        StateSelectionState(
          country: DropdownState.selected(countries, countries.first),
          state: const DropdownState.error(),
        ),
      );
      await tester.pumpApp(
        BlocProvider.value(
          value: stateSelectionBloc,
          child: const StateSelectionView(),
        ),
      );
      expect(find.text(countries.first.name), findsOneWidget);
      expect(find.text('Loading Failed'), findsOneWidget);
    });

    testWidgets('select Country fron Dropdown', (tester) async {
      when(() => stateSelectionBloc.state).thenReturn(
        // ignore: prefer_const_constructors
        StateSelectionState(
          country: const DropdownState<Country>.options(countries),
          state: const DropdownState<State>.initial(),
        ),
      );
      await tester.pumpApp(
        BlocProvider.value(
          value: stateSelectionBloc,
          child: const StateSelectionView(),
        ),
      );

      final dropdown = find.byKey(Keys.countriesDropdown);

      await tester.tap(dropdown);
      await tester.pumpAndSettle();

      final dropdownItem = find.text(countries.first.name).last;

      await tester.tap(dropdownItem);
      await tester.pumpAndSettle();

      expect(find.text(countries.first.name), findsOneWidget);
    });

    testWidgets('change selected Country from dropdown', (tester) async {
      when(() => stateSelectionBloc.state).thenReturn(
        StateSelectionState(
          country: DropdownState.selected(countries, countries.first),
          state: const DropdownState<State>.initial(),
        ),
      );
      await tester.pumpApp(
        BlocProvider.value(
          value: stateSelectionBloc,
          child: const StateSelectionView(),
        ),
      );

      final dropdown = find.byKey(Keys.countriesDropdown);

      await tester.tap(dropdown);
      await tester.pumpAndSettle();

      final dropdownItem = find.text(countries.first.name).last;

      await tester.tap(dropdownItem);
      await tester.pumpAndSettle();

      expect(find.text(countries.first.name), findsOneWidget);
    });

    testWidgets('select State from Dropdown', (tester) async {
      final states = countryStates[countries.first] ?? [];
      when(() => stateSelectionBloc.state).thenReturn(
        StateSelectionState(
          country: DropdownState.selected(countries, countries.first),
          state: DropdownState.options(states),
        ),
      );
      await tester.pumpApp(
        BlocProvider.value(
          value: stateSelectionBloc,
          child: const StateSelectionView(),
        ),
      );

      final dropdown = find.byKey(Keys.statesDropdown);

      await tester.tap(dropdown);
      await tester.pumpAndSettle();

      final dropdownItem = find.text(states.first.name).last;

      await tester.tap(dropdownItem);
      await tester.pumpAndSettle();

      expect(find.text(states.first.name), findsOneWidget);
    });
  });
}
