// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:sample_app_flutter/app/app.dart';
import 'package:sample_app_flutter/bootstrap.dart';
import 'package:sample_app_flutter/cupid_api/cupid_api.dart';

void main() {
  bootstrap((CupidApiClient apiClient) => App(apiClient: apiClient));
}
