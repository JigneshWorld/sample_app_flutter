import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app_flutter/app_ui_kit/app_ui_kit.dart';
import 'package:sample_app_flutter/l10n/l10n.dart';
import 'package:sample_app_flutter/state_selection/bloc/state_selection_bloc.dart';
import 'package:sample_app_flutter/state_selection/widgets/widgets.dart';

class StateSelectionPage extends StatelessWidget {
  const StateSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          StateSelectionBloc()..add(const StateSelectionEvent.loadCountries()),
      child: const StateSelectionView(),
    );
  }
}

class StateSelectionView extends StatelessWidget {
  const StateSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.selectionAppBarTitle)),
      body: Form(
        child: Column(
          children: const [
            Spacer(flex: 2),
            Padding(
              padding: EdgeInsets.all(AppSpacing.lg),
              child: CountriesDropdown(),
            ),
            Padding(
              padding: EdgeInsets.all(AppSpacing.lg),
              child: StatesDropdown(),
            ),
            Spacer(flex: 4),
          ],
        ),
      ),
      floatingActionButton: const SubmitFAB(),
    );
  }
}
