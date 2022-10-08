// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:sample_app_flutter/cupid_api/cupid_api.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(
  FutureOr<Widget> Function(CupidApiClient apiClient) builder,
) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  const baseUrl = String.fromEnvironment('CUPID_API_BASE_URL');
  const apiKey = String.fromEnvironment('CUPID_API_KEY');
  const userAgent = String.fromEnvironment('CUPID_API_USER_AGENT');

  assert(baseUrl.isNotEmpty, 'please add dart-config:CUPID_API_BASE_URL');
  assert(apiKey.isNotEmpty, 'please add dart-config:CUPID_API_KEY');
  assert(userAgent.isNotEmpty, 'please add dart-config:CUPID_API_USER_AGENT');

  final apiClient = CupidApiClient(
    baseUrl: baseUrl,
    apiKey: apiKey,
    userAgent: userAgent,
  );

  Bloc.observer = AppBlocObserver();

  await runZonedGuarded(
    () async => runApp(await builder(apiClient)),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
