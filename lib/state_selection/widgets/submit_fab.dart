import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app_flutter/state_selection/keys.dart';
import 'package:sample_app_flutter/state_selection/state_selection.dart';

class SubmitFAB extends StatelessWidget {
  const SubmitFAB({super.key});

  @override
  Widget build(BuildContext context) {
    final isReady =
        context.select<StateSelectionBloc, bool>((bloc) => bloc.state.isReady);
    return isReady
        ? FloatingActionButton(
            key: Keys.submitFAB,
            onPressed: null,
            child: const Icon(Icons.send),
          )
        : const Offstage();
  }
}

extension on StateSelectionState {
  bool get isReady =>
      country.maybeWhen(selected: (_, __) => true, orElse: () => false) &&
      state.maybeWhen(selected: (_, __) => true, orElse: () => false);
}
