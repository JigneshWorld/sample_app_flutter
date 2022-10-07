part of 'state_selection_bloc.dart';

@freezed
class StateSelectionState with _$StateSelectionState {
  const factory StateSelectionState({
    required DropdownState<Country> country,
    required DropdownState<State> state,
  }) = _StateSelectionState;

  factory StateSelectionState.initial() => const StateSelectionState(
        country: DropdownState<Country>.initial(),
        state: DropdownState<State>.initial(),
      );
}

mixin HasOptions<T> {
  List<T> get options;
}

// FIXME: Issue - https://github.com/rrousselGit/freezed/issues/757
@Freezed(genericArgumentFactories: true, copyWith: true)
class DropdownState<T> with _$DropdownState<T> {
  const factory DropdownState.initial() = _Initial;
  const factory DropdownState.loading() = _Loading;
  @With<HasOptions<T>>()
  const factory DropdownState.options(List<T> options) = _Options;
  @With<HasOptions<T>>()
  const factory DropdownState.selected(List<T> options, T selected) = _Selected;
  const factory DropdownState.error() = _Error;
}
