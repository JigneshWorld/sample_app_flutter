#!/bin/bash

# This script can be used to run flutter test for a given directory (defaults to the current directory)
# It will exclude generated code and translations (mimicking the ci) and open the coverage report in a
# new window once it has run successfully.
#
# To run in current directory:
# ./tools/coverage.sh 
#
# To run in other directory:
# ./tools/coverage.sh ./path/to/other/project

set -e

PROJECT_PATH="${1:-.}"
PROJECT_COVERAGE=./coverage/lcov.info
TEST_DIR="${2:-test}"

cd ${PROJECT_PATH}

rm -rf coverage
flutter test -x presubmit-only --no-pub --test-randomize-ordering-seed random --coverage $TEST_DIR
lcov --remove ${PROJECT_COVERAGE} -o ${PROJECT_COVERAGE} \
    '**/*.g.dart' \
    '**/l10n/*.dart' \
    '**/l10n/**/*.dart' \
    '**/main/bootstrap.dart' \
    '**/*.gen.dart' \
    '**/*.freezed.dart' 
genhtml ${PROJECT_COVERAGE} -o coverage
open ./coverage/index.html
