import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app_flutter/cupid_api/cupid_api.dart';
import 'package:sample_app_flutter/l10n/l10n.dart';
import 'package:sample_app_flutter/state_selection/bloc/state_selection_bloc.dart';
import 'package:sample_app_flutter/state_selection/keys.dart';
import 'package:sample_app_flutter/state_selection/state_selection.dart';
import 'package:sample_app_flutter/state_selection/widgets/dynamic_dropdown.dart';

class CountriesDropdown extends StatelessWidget {
  const CountriesDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = context.select<StateSelectionBloc, DropdownState<Country>>(
      (bloc) => bloc.state.country,
    );
    return DynamicDropdown<Country>(
      keyDropdown: Keys.countriesDropdown,
      state: state,
      initialHint: l10n.pleaseWait,
      errorHint: l10n.loadingFailed,
      loadingHint: l10n.loadingCountries,
      selectHint: l10n.selectCountry,
      onSelected: (country) {
        context
            .read<StateSelectionBloc>()
            .add(StateSelectionEvent.countrySelected(country));
      },
      toLabel: (Country item) => item.name,
    );
  }
}
