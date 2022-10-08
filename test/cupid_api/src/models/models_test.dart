import 'dart:convert';

import 'package:sample_app_flutter/cupid_api/cupid_api.dart';
import 'package:test/test.dart';

void main() {
  group('Models', () {
    group('Country', () {
      test('fromJson', () {
        final country = Country.fromJson(
          jsonDecode('{"id":13,"value":"Australia"}') as Map<String, dynamic>,
        );
        expect(country.id, 13);
        expect(country.name, 'Australia');
      });
    });

    group('State', () {
      test('fromJson', () {
        final state = State.fromJson(
          jsonDecode('{"id":2202,"value":"Auckland"}') as Map<String, dynamic>,
        );
        expect(state.id, 2202);
        expect(state.name, 'Auckland');
      });
    });
  });
}
