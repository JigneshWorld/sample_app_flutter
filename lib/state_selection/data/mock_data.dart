import 'package:sample_app_flutter/state_selection/models/models.dart';

const _india = Country(id: 1, name: 'India');
const _australia = Country(id: 2, name: 'Australia');
const _unitedStates = Country(id: 3, name: 'United States');

const countries = <Country>[
  _india,
  _australia,
  _unitedStates,
];

final countryStates = {
  _india: [
    const State(id: 11, name: 'Gujarat'),
    const State(id: 12, name: 'Maharashtra'),
    const State(id: 13, name: 'Goa'),
    const State(id: 14, name: 'Telangana'),
    const State(id: 14, name: 'Karnataka'),
  ],
  _australia: [
    const State(id: 21, name: 'New South Wales'),
    const State(id: 22, name: 'Victoria'),
    const State(id: 23, name: 'Queensland'),
    const State(id: 24, name: 'Western Australia'),
  ],
  _unitedStates: [
    const State(id: 10, name: 'New York State'),
    const State(id: 10, name: 'California'),
    const State(id: 10, name: 'Florida'),
  ],
};
