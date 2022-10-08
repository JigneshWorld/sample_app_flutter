// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sample_app_flutter/app_ui_kit/app_ui_kit.dart';
import 'package:sample_app_flutter/cupid_api/src/cupid_api_client.dart';
import 'package:sample_app_flutter/l10n/l10n.dart';
import 'package:sample_app_flutter/state_selection/state_selection.dart';

class App extends StatelessWidget {
  const App({super.key, required CupidApiClient apiClient})
      : _apiClient = apiClient;

  final CupidApiClient _apiClient;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _apiClient,
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: const AppTheme().themeData,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const StateSelectionPage(),
    );
  }
}
