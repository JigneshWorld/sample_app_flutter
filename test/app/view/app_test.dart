// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter_test/flutter_test.dart';
import 'package:sample_app_flutter/app/app.dart';
import 'package:sample_app_flutter/state_selection/state_selection.dart';

void main() {
  group('App', () {
    testWidgets('renders StateSelectionPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(StateSelectionPage), findsOneWidget);
    });
  });
}
