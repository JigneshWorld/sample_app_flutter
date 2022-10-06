import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sample_app_flutter/app_ui_kit/app_ui_kit.dart';

void main() {
  group('AppTheme', () {
    group('themeData', () {
      test('primary color is blue', () {
        expect(
          const AppTheme().themeData.primaryColor,
          Colors.blue,
        );
      });

      test('secondary color is blue', () {
        expect(
          const AppTheme().themeData.colorScheme.secondary,
          AppColors.blue,
        );
      });

      test('scaffold background color is grey.shade50', () {
        expect(
          const AppTheme().themeData.scaffoldBackgroundColor,
          Colors.grey[50],
        );
      });
    });
  });
}
