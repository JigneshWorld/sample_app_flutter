#!/bin/sh

# This script can be used to check code health before commit
# It will exclude generated code and translations (mimicking the ci) 
#
# To run in current directory:
# ./tools/precommit.sh

set -ex

# Install Dependencies
flutter pub get

# Check Formatting
flutter format --set-exit-if-changed lib test

# Analyze
flutter analyze lib test