import 'package:flutter/material.dart';
import 'package:sample_app_flutter/state_selection/state_selection.dart';

class DynamicDropdown<T> extends StatelessWidget {
  const DynamicDropdown({
    super.key,
    required this.keyDropdown,
    required this.state,
    required this.initialHint,
    required this.loadingHint,
    required this.errorHint,
    required this.selectHint,
    required this.onSelected,
    required this.toLabel,
  });

  final Key keyDropdown;
  final DropdownState<T> state;
  final String initialHint;
  final String loadingHint;
  final String errorHint;
  final String selectHint;
  final void Function(T item) onSelected;
  final String Function(T item) toLabel;

  List<DropdownMenuItem<T>> _mapToMenuItems(List<T> items) {
    return items
        .map<DropdownMenuItem<T>>(
          (item) => DropdownMenuItem<T>(
            value: item,
            child: Text(toLabel(item)),
          ),
        )
        .toList();
  }

  void _onChanged(T? value) {
    if (value != null) {
      onSelected(value);
    }
  }

  Widget _dropdownButton(
    String hint, {
    List<DropdownMenuItem<T>>? items,
    T? value,
  }) {
    return DropdownButtonFormField<T>(
      key: keyDropdown,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
      items: items,
      hint: Text(hint),
      value: value,
      onChanged: items != null ? _onChanged : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return state.when(
      initial: () => _dropdownButton(initialHint),
      loading: () => _dropdownButton(loadingHint),
      error: () => _dropdownButton(errorHint),
      options: (options) => _dropdownButton(
        selectHint,
        items: _mapToMenuItems(options),
      ),
      selected: (options, selected) => _dropdownButton(
        selectHint,
        items: _mapToMenuItems(options),
        value: selected,
      ),
    );
  }
}
