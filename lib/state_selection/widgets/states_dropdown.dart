import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app_flutter/cupid_api/cupid_api.dart' as api;
import 'package:sample_app_flutter/l10n/l10n.dart';
import 'package:sample_app_flutter/state_selection/bloc/state_selection_bloc.dart';
import 'package:sample_app_flutter/state_selection/keys.dart';
import 'package:sample_app_flutter/state_selection/state_selection.dart';
import 'package:sample_app_flutter/state_selection/widgets/dynamic_dropdown.dart';

class StatesDropdown extends StatelessWidget {
  const StatesDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = context.select<StateSelectionBloc, DropdownState<api.State>>(
      (bloc) => bloc.state.state,
    );
    return DynamicDropdown<api.State>(
      keyDropdown: Keys.statesDropdown,
      state: state,
      initialHint: l10n.statesInitial,
      errorHint: l10n.loadingFailed,
      loadingHint: l10n.loadingStates,
      selectHint: l10n.selectState,
      onSelected: (state) {
        context
            .read<StateSelectionBloc>()
            .add(StateSelectionEvent.stateSelected(state));
      },
      toLabel: (api.State item) => item.name,
    );
  }
}
