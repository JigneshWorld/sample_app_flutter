// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state_selection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateSelectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCountries,
    required TResult Function(Country country) countrySelected,
    required TResult Function() loadStates,
    required TResult Function(State state) stateSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCountries,
    TResult Function(Country country)? countrySelected,
    TResult Function()? loadStates,
    TResult Function(State state)? stateSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCountries,
    TResult Function(Country country)? countrySelected,
    TResult Function()? loadStates,
    TResult Function(State state)? stateSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadContriesEvent value) loadCountries,
    required TResult Function(CountrySelectedEvent value) countrySelected,
    required TResult Function(LoadStatesEvent value) loadStates,
    required TResult Function(StateSelectedEvent value) stateSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadContriesEvent value)? loadCountries,
    TResult Function(CountrySelectedEvent value)? countrySelected,
    TResult Function(LoadStatesEvent value)? loadStates,
    TResult Function(StateSelectedEvent value)? stateSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadContriesEvent value)? loadCountries,
    TResult Function(CountrySelectedEvent value)? countrySelected,
    TResult Function(LoadStatesEvent value)? loadStates,
    TResult Function(StateSelectedEvent value)? stateSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateSelectionEventCopyWith<$Res> {
  factory $StateSelectionEventCopyWith(
          StateSelectionEvent value, $Res Function(StateSelectionEvent) then) =
      _$StateSelectionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateSelectionEventCopyWithImpl<$Res>
    implements $StateSelectionEventCopyWith<$Res> {
  _$StateSelectionEventCopyWithImpl(this._value, this._then);

  final StateSelectionEvent _value;
  // ignore: unused_field
  final $Res Function(StateSelectionEvent) _then;
}

/// @nodoc
abstract class _$$LoadContriesEventCopyWith<$Res> {
  factory _$$LoadContriesEventCopyWith(
          _$LoadContriesEvent value, $Res Function(_$LoadContriesEvent) then) =
      __$$LoadContriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadContriesEventCopyWithImpl<$Res>
    extends _$StateSelectionEventCopyWithImpl<$Res>
    implements _$$LoadContriesEventCopyWith<$Res> {
  __$$LoadContriesEventCopyWithImpl(
      _$LoadContriesEvent _value, $Res Function(_$LoadContriesEvent) _then)
      : super(_value, (v) => _then(v as _$LoadContriesEvent));

  @override
  _$LoadContriesEvent get _value => super._value as _$LoadContriesEvent;
}

/// @nodoc

class _$LoadContriesEvent implements LoadContriesEvent {
  const _$LoadContriesEvent();

  @override
  String toString() {
    return 'StateSelectionEvent.loadCountries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadContriesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCountries,
    required TResult Function(Country country) countrySelected,
    required TResult Function() loadStates,
    required TResult Function(State state) stateSelected,
  }) {
    return loadCountries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCountries,
    TResult Function(Country country)? countrySelected,
    TResult Function()? loadStates,
    TResult Function(State state)? stateSelected,
  }) {
    return loadCountries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCountries,
    TResult Function(Country country)? countrySelected,
    TResult Function()? loadStates,
    TResult Function(State state)? stateSelected,
    required TResult orElse(),
  }) {
    if (loadCountries != null) {
      return loadCountries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadContriesEvent value) loadCountries,
    required TResult Function(CountrySelectedEvent value) countrySelected,
    required TResult Function(LoadStatesEvent value) loadStates,
    required TResult Function(StateSelectedEvent value) stateSelected,
  }) {
    return loadCountries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadContriesEvent value)? loadCountries,
    TResult Function(CountrySelectedEvent value)? countrySelected,
    TResult Function(LoadStatesEvent value)? loadStates,
    TResult Function(StateSelectedEvent value)? stateSelected,
  }) {
    return loadCountries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadContriesEvent value)? loadCountries,
    TResult Function(CountrySelectedEvent value)? countrySelected,
    TResult Function(LoadStatesEvent value)? loadStates,
    TResult Function(StateSelectedEvent value)? stateSelected,
    required TResult orElse(),
  }) {
    if (loadCountries != null) {
      return loadCountries(this);
    }
    return orElse();
  }
}

abstract class LoadContriesEvent implements StateSelectionEvent {
  const factory LoadContriesEvent() = _$LoadContriesEvent;
}

/// @nodoc
abstract class _$$CountrySelectedEventCopyWith<$Res> {
  factory _$$CountrySelectedEventCopyWith(_$CountrySelectedEvent value,
          $Res Function(_$CountrySelectedEvent) then) =
      __$$CountrySelectedEventCopyWithImpl<$Res>;
  $Res call({Country country});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$$CountrySelectedEventCopyWithImpl<$Res>
    extends _$StateSelectionEventCopyWithImpl<$Res>
    implements _$$CountrySelectedEventCopyWith<$Res> {
  __$$CountrySelectedEventCopyWithImpl(_$CountrySelectedEvent _value,
      $Res Function(_$CountrySelectedEvent) _then)
      : super(_value, (v) => _then(v as _$CountrySelectedEvent));

  @override
  _$CountrySelectedEvent get _value => super._value as _$CountrySelectedEvent;

  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_$CountrySelectedEvent(
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }

  @override
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc

class _$CountrySelectedEvent implements CountrySelectedEvent {
  const _$CountrySelectedEvent(this.country);

  @override
  final Country country;

  @override
  String toString() {
    return 'StateSelectionEvent.countrySelected(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountrySelectedEvent &&
            const DeepCollectionEquality().equals(other.country, country));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(country));

  @JsonKey(ignore: true)
  @override
  _$$CountrySelectedEventCopyWith<_$CountrySelectedEvent> get copyWith =>
      __$$CountrySelectedEventCopyWithImpl<_$CountrySelectedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCountries,
    required TResult Function(Country country) countrySelected,
    required TResult Function() loadStates,
    required TResult Function(State state) stateSelected,
  }) {
    return countrySelected(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCountries,
    TResult Function(Country country)? countrySelected,
    TResult Function()? loadStates,
    TResult Function(State state)? stateSelected,
  }) {
    return countrySelected?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCountries,
    TResult Function(Country country)? countrySelected,
    TResult Function()? loadStates,
    TResult Function(State state)? stateSelected,
    required TResult orElse(),
  }) {
    if (countrySelected != null) {
      return countrySelected(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadContriesEvent value) loadCountries,
    required TResult Function(CountrySelectedEvent value) countrySelected,
    required TResult Function(LoadStatesEvent value) loadStates,
    required TResult Function(StateSelectedEvent value) stateSelected,
  }) {
    return countrySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadContriesEvent value)? loadCountries,
    TResult Function(CountrySelectedEvent value)? countrySelected,
    TResult Function(LoadStatesEvent value)? loadStates,
    TResult Function(StateSelectedEvent value)? stateSelected,
  }) {
    return countrySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadContriesEvent value)? loadCountries,
    TResult Function(CountrySelectedEvent value)? countrySelected,
    TResult Function(LoadStatesEvent value)? loadStates,
    TResult Function(StateSelectedEvent value)? stateSelected,
    required TResult orElse(),
  }) {
    if (countrySelected != null) {
      return countrySelected(this);
    }
    return orElse();
  }
}

abstract class CountrySelectedEvent implements StateSelectionEvent {
  const factory CountrySelectedEvent(final Country country) =
      _$CountrySelectedEvent;

  Country get country;
  @JsonKey(ignore: true)
  _$$CountrySelectedEventCopyWith<_$CountrySelectedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadStatesEventCopyWith<$Res> {
  factory _$$LoadStatesEventCopyWith(
          _$LoadStatesEvent value, $Res Function(_$LoadStatesEvent) then) =
      __$$LoadStatesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadStatesEventCopyWithImpl<$Res>
    extends _$StateSelectionEventCopyWithImpl<$Res>
    implements _$$LoadStatesEventCopyWith<$Res> {
  __$$LoadStatesEventCopyWithImpl(
      _$LoadStatesEvent _value, $Res Function(_$LoadStatesEvent) _then)
      : super(_value, (v) => _then(v as _$LoadStatesEvent));

  @override
  _$LoadStatesEvent get _value => super._value as _$LoadStatesEvent;
}

/// @nodoc

class _$LoadStatesEvent implements LoadStatesEvent {
  const _$LoadStatesEvent();

  @override
  String toString() {
    return 'StateSelectionEvent.loadStates()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadStatesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCountries,
    required TResult Function(Country country) countrySelected,
    required TResult Function() loadStates,
    required TResult Function(State state) stateSelected,
  }) {
    return loadStates();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCountries,
    TResult Function(Country country)? countrySelected,
    TResult Function()? loadStates,
    TResult Function(State state)? stateSelected,
  }) {
    return loadStates?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCountries,
    TResult Function(Country country)? countrySelected,
    TResult Function()? loadStates,
    TResult Function(State state)? stateSelected,
    required TResult orElse(),
  }) {
    if (loadStates != null) {
      return loadStates();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadContriesEvent value) loadCountries,
    required TResult Function(CountrySelectedEvent value) countrySelected,
    required TResult Function(LoadStatesEvent value) loadStates,
    required TResult Function(StateSelectedEvent value) stateSelected,
  }) {
    return loadStates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadContriesEvent value)? loadCountries,
    TResult Function(CountrySelectedEvent value)? countrySelected,
    TResult Function(LoadStatesEvent value)? loadStates,
    TResult Function(StateSelectedEvent value)? stateSelected,
  }) {
    return loadStates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadContriesEvent value)? loadCountries,
    TResult Function(CountrySelectedEvent value)? countrySelected,
    TResult Function(LoadStatesEvent value)? loadStates,
    TResult Function(StateSelectedEvent value)? stateSelected,
    required TResult orElse(),
  }) {
    if (loadStates != null) {
      return loadStates(this);
    }
    return orElse();
  }
}

abstract class LoadStatesEvent implements StateSelectionEvent {
  const factory LoadStatesEvent() = _$LoadStatesEvent;
}

/// @nodoc
abstract class _$$StateSelectedEventCopyWith<$Res> {
  factory _$$StateSelectedEventCopyWith(_$StateSelectedEvent value,
          $Res Function(_$StateSelectedEvent) then) =
      __$$StateSelectedEventCopyWithImpl<$Res>;
  $Res call({State state});

  $StateCopyWith<$Res> get state;
}

/// @nodoc
class __$$StateSelectedEventCopyWithImpl<$Res>
    extends _$StateSelectionEventCopyWithImpl<$Res>
    implements _$$StateSelectedEventCopyWith<$Res> {
  __$$StateSelectedEventCopyWithImpl(
      _$StateSelectedEvent _value, $Res Function(_$StateSelectedEvent) _then)
      : super(_value, (v) => _then(v as _$StateSelectedEvent));

  @override
  _$StateSelectedEvent get _value => super._value as _$StateSelectedEvent;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_$StateSelectedEvent(
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as State,
    ));
  }

  @override
  $StateCopyWith<$Res> get state {
    return $StateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$StateSelectedEvent implements StateSelectedEvent {
  const _$StateSelectedEvent(this.state);

  @override
  final State state;

  @override
  String toString() {
    return 'StateSelectionEvent.stateSelected(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateSelectedEvent &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$$StateSelectedEventCopyWith<_$StateSelectedEvent> get copyWith =>
      __$$StateSelectedEventCopyWithImpl<_$StateSelectedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCountries,
    required TResult Function(Country country) countrySelected,
    required TResult Function() loadStates,
    required TResult Function(State state) stateSelected,
  }) {
    return stateSelected(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadCountries,
    TResult Function(Country country)? countrySelected,
    TResult Function()? loadStates,
    TResult Function(State state)? stateSelected,
  }) {
    return stateSelected?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCountries,
    TResult Function(Country country)? countrySelected,
    TResult Function()? loadStates,
    TResult Function(State state)? stateSelected,
    required TResult orElse(),
  }) {
    if (stateSelected != null) {
      return stateSelected(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadContriesEvent value) loadCountries,
    required TResult Function(CountrySelectedEvent value) countrySelected,
    required TResult Function(LoadStatesEvent value) loadStates,
    required TResult Function(StateSelectedEvent value) stateSelected,
  }) {
    return stateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadContriesEvent value)? loadCountries,
    TResult Function(CountrySelectedEvent value)? countrySelected,
    TResult Function(LoadStatesEvent value)? loadStates,
    TResult Function(StateSelectedEvent value)? stateSelected,
  }) {
    return stateSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadContriesEvent value)? loadCountries,
    TResult Function(CountrySelectedEvent value)? countrySelected,
    TResult Function(LoadStatesEvent value)? loadStates,
    TResult Function(StateSelectedEvent value)? stateSelected,
    required TResult orElse(),
  }) {
    if (stateSelected != null) {
      return stateSelected(this);
    }
    return orElse();
  }
}

abstract class StateSelectedEvent implements StateSelectionEvent {
  const factory StateSelectedEvent(final State state) = _$StateSelectedEvent;

  State get state;
  @JsonKey(ignore: true)
  _$$StateSelectedEventCopyWith<_$StateSelectedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StateSelectionState {
  DropdownState<Country> get country => throw _privateConstructorUsedError;
  DropdownState<State> get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateSelectionStateCopyWith<StateSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateSelectionStateCopyWith<$Res> {
  factory $StateSelectionStateCopyWith(
          StateSelectionState value, $Res Function(StateSelectionState) then) =
      _$StateSelectionStateCopyWithImpl<$Res>;
  $Res call({DropdownState<Country> country, DropdownState<State> state});

  $DropdownStateCopyWith<Country, $Res> get country;
  $DropdownStateCopyWith<State, $Res> get state;
}

/// @nodoc
class _$StateSelectionStateCopyWithImpl<$Res>
    implements $StateSelectionStateCopyWith<$Res> {
  _$StateSelectionStateCopyWithImpl(this._value, this._then);

  final StateSelectionState _value;
  // ignore: unused_field
  final $Res Function(StateSelectionState) _then;

  @override
  $Res call({
    Object? country = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as DropdownState<Country>,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as DropdownState<State>,
    ));
  }

  @override
  $DropdownStateCopyWith<Country, $Res> get country {
    return $DropdownStateCopyWith<Country, $Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }

  @override
  $DropdownStateCopyWith<State, $Res> get state {
    return $DropdownStateCopyWith<State, $Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc
abstract class _$$_StateSelectionStateCopyWith<$Res>
    implements $StateSelectionStateCopyWith<$Res> {
  factory _$$_StateSelectionStateCopyWith(_$_StateSelectionState value,
          $Res Function(_$_StateSelectionState) then) =
      __$$_StateSelectionStateCopyWithImpl<$Res>;
  @override
  $Res call({DropdownState<Country> country, DropdownState<State> state});

  @override
  $DropdownStateCopyWith<Country, $Res> get country;
  @override
  $DropdownStateCopyWith<State, $Res> get state;
}

/// @nodoc
class __$$_StateSelectionStateCopyWithImpl<$Res>
    extends _$StateSelectionStateCopyWithImpl<$Res>
    implements _$$_StateSelectionStateCopyWith<$Res> {
  __$$_StateSelectionStateCopyWithImpl(_$_StateSelectionState _value,
      $Res Function(_$_StateSelectionState) _then)
      : super(_value, (v) => _then(v as _$_StateSelectionState));

  @override
  _$_StateSelectionState get _value => super._value as _$_StateSelectionState;

  @override
  $Res call({
    Object? country = freezed,
    Object? state = freezed,
  }) {
    return _then(_$_StateSelectionState(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as DropdownState<Country>,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as DropdownState<State>,
    ));
  }
}

/// @nodoc

class _$_StateSelectionState implements _StateSelectionState {
  const _$_StateSelectionState(
      {this.country = const DropdownState<Country>.initial(),
      this.state = const DropdownState<State>.initial()});

  @override
  @JsonKey()
  final DropdownState<Country> country;
  @override
  @JsonKey()
  final DropdownState<State> state;

  @override
  String toString() {
    return 'StateSelectionState(country: $country, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateSelectionState &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$$_StateSelectionStateCopyWith<_$_StateSelectionState> get copyWith =>
      __$$_StateSelectionStateCopyWithImpl<_$_StateSelectionState>(
          this, _$identity);
}

abstract class _StateSelectionState implements StateSelectionState {
  const factory _StateSelectionState(
      {final DropdownState<Country> country,
      final DropdownState<State> state}) = _$_StateSelectionState;

  @override
  DropdownState<Country> get country;
  @override
  DropdownState<State> get state;
  @override
  @JsonKey(ignore: true)
  _$$_StateSelectionStateCopyWith<_$_StateSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DropdownState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> options) options,
    required TResult Function(List<T> options, T selected) selected,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> options)? options,
    TResult Function(List<T> options, T selected)? selected,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> options)? options,
    TResult Function(List<T> options, T selected)? selected,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Options<T> value) options,
    required TResult Function(_Selected<T> value) selected,
    required TResult Function(_Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Options<T> value)? options,
    TResult Function(_Selected<T> value)? selected,
    TResult Function(_Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Options<T> value)? options,
    TResult Function(_Selected<T> value)? selected,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownStateCopyWith<T, $Res> {
  factory $DropdownStateCopyWith(
          DropdownState<T> value, $Res Function(DropdownState<T>) then) =
      _$DropdownStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$DropdownStateCopyWithImpl<T, $Res>
    implements $DropdownStateCopyWith<T, $Res> {
  _$DropdownStateCopyWithImpl(this._value, this._then);

  final DropdownState<T> _value;
  // ignore: unused_field
  final $Res Function(DropdownState<T>) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<T, $Res> {
  factory _$$_InitialCopyWith(
          _$_Initial<T> value, $Res Function(_$_Initial<T>) then) =
      __$$_InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<T, $Res>
    extends _$DropdownStateCopyWithImpl<T, $Res>
    implements _$$_InitialCopyWith<T, $Res> {
  __$$_InitialCopyWithImpl(
      _$_Initial<T> _value, $Res Function(_$_Initial<T>) _then)
      : super(_value, (v) => _then(v as _$_Initial<T>));

  @override
  _$_Initial<T> get _value => super._value as _$_Initial<T>;
}

/// @nodoc

class _$_Initial<T> implements _Initial<T> {
  const _$_Initial();

  @override
  String toString() {
    return 'DropdownState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> options) options,
    required TResult Function(List<T> options, T selected) selected,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> options)? options,
    TResult Function(List<T> options, T selected)? selected,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> options)? options,
    TResult Function(List<T> options, T selected)? selected,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Options<T> value) options,
    required TResult Function(_Selected<T> value) selected,
    required TResult Function(_Error<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Options<T> value)? options,
    TResult Function(_Selected<T> value)? selected,
    TResult Function(_Error<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Options<T> value)? options,
    TResult Function(_Selected<T> value)? selected,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements DropdownState<T> {
  const factory _Initial() = _$_Initial<T>;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<T, $Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading<T> value, $Res Function(_$_Loading<T>) then) =
      __$$_LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<T, $Res>
    extends _$DropdownStateCopyWithImpl<T, $Res>
    implements _$$_LoadingCopyWith<T, $Res> {
  __$$_LoadingCopyWithImpl(
      _$_Loading<T> _value, $Res Function(_$_Loading<T>) _then)
      : super(_value, (v) => _then(v as _$_Loading<T>));

  @override
  _$_Loading<T> get _value => super._value as _$_Loading<T>;
}

/// @nodoc

class _$_Loading<T> implements _Loading<T> {
  const _$_Loading();

  @override
  String toString() {
    return 'DropdownState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> options) options,
    required TResult Function(List<T> options, T selected) selected,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> options)? options,
    TResult Function(List<T> options, T selected)? selected,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> options)? options,
    TResult Function(List<T> options, T selected)? selected,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Options<T> value) options,
    required TResult Function(_Selected<T> value) selected,
    required TResult Function(_Error<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Options<T> value)? options,
    TResult Function(_Selected<T> value)? selected,
    TResult Function(_Error<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Options<T> value)? options,
    TResult Function(_Selected<T> value)? selected,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements DropdownState<T> {
  const factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$$_OptionsCopyWith<T, $Res> {
  factory _$$_OptionsCopyWith(
          _$_Options<T> value, $Res Function(_$_Options<T>) then) =
      __$$_OptionsCopyWithImpl<T, $Res>;
  $Res call({List<T> options});
}

/// @nodoc
class __$$_OptionsCopyWithImpl<T, $Res>
    extends _$DropdownStateCopyWithImpl<T, $Res>
    implements _$$_OptionsCopyWith<T, $Res> {
  __$$_OptionsCopyWithImpl(
      _$_Options<T> _value, $Res Function(_$_Options<T>) _then)
      : super(_value, (v) => _then(v as _$_Options<T>));

  @override
  _$_Options<T> get _value => super._value as _$_Options<T>;

  @override
  $Res call({
    Object? options = freezed,
  }) {
    return _then(_$_Options<T>(
      options == freezed
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$_Options<T> with HasOptions<T> implements _Options<T> {
  const _$_Options(final List<T> options) : _options = options;

  final List<T> _options;
  @override
  List<T> get options {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'DropdownState<$T>.options(options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Options<T> &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  _$$_OptionsCopyWith<T, _$_Options<T>> get copyWith =>
      __$$_OptionsCopyWithImpl<T, _$_Options<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> options) options,
    required TResult Function(List<T> options, T selected) selected,
    required TResult Function() error,
  }) {
    return options(this.options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> options)? options,
    TResult Function(List<T> options, T selected)? selected,
    TResult Function()? error,
  }) {
    return options?.call(this.options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> options)? options,
    TResult Function(List<T> options, T selected)? selected,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (options != null) {
      return options(this.options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Options<T> value) options,
    required TResult Function(_Selected<T> value) selected,
    required TResult Function(_Error<T> value) error,
  }) {
    return options(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Options<T> value)? options,
    TResult Function(_Selected<T> value)? selected,
    TResult Function(_Error<T> value)? error,
  }) {
    return options?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Options<T> value)? options,
    TResult Function(_Selected<T> value)? selected,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (options != null) {
      return options(this);
    }
    return orElse();
  }
}

abstract class _Options<T> implements DropdownState<T>, HasOptions<T> {
  const factory _Options(final List<T> options) = _$_Options<T>;

  List<T> get options;
  @JsonKey(ignore: true)
  _$$_OptionsCopyWith<T, _$_Options<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectedCopyWith<T, $Res> {
  factory _$$_SelectedCopyWith(
          _$_Selected<T> value, $Res Function(_$_Selected<T>) then) =
      __$$_SelectedCopyWithImpl<T, $Res>;
  $Res call({List<T> options, T selected});
}

/// @nodoc
class __$$_SelectedCopyWithImpl<T, $Res>
    extends _$DropdownStateCopyWithImpl<T, $Res>
    implements _$$_SelectedCopyWith<T, $Res> {
  __$$_SelectedCopyWithImpl(
      _$_Selected<T> _value, $Res Function(_$_Selected<T>) _then)
      : super(_value, (v) => _then(v as _$_Selected<T>));

  @override
  _$_Selected<T> get _value => super._value as _$_Selected<T>;

  @override
  $Res call({
    Object? options = freezed,
    Object? selected = freezed,
  }) {
    return _then(_$_Selected<T>(
      options == freezed
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<T>,
      selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Selected<T> with HasOptions<T> implements _Selected<T> {
  const _$_Selected(final List<T> options, this.selected) : _options = options;

  final List<T> _options;
  @override
  List<T> get options {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final T selected;

  @override
  String toString() {
    return 'DropdownState<$T>.selected(options: $options, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Selected<T> &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_options),
      const DeepCollectionEquality().hash(selected));

  @JsonKey(ignore: true)
  @override
  _$$_SelectedCopyWith<T, _$_Selected<T>> get copyWith =>
      __$$_SelectedCopyWithImpl<T, _$_Selected<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> options) options,
    required TResult Function(List<T> options, T selected) selected,
    required TResult Function() error,
  }) {
    return selected(this.options, this.selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> options)? options,
    TResult Function(List<T> options, T selected)? selected,
    TResult Function()? error,
  }) {
    return selected?.call(this.options, this.selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> options)? options,
    TResult Function(List<T> options, T selected)? selected,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this.options, this.selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Options<T> value) options,
    required TResult Function(_Selected<T> value) selected,
    required TResult Function(_Error<T> value) error,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Options<T> value)? options,
    TResult Function(_Selected<T> value)? selected,
    TResult Function(_Error<T> value)? error,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Options<T> value)? options,
    TResult Function(_Selected<T> value)? selected,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _Selected<T> implements DropdownState<T>, HasOptions<T> {
  const factory _Selected(final List<T> options, final T selected) =
      _$_Selected<T>;

  List<T> get options;
  T get selected;
  @JsonKey(ignore: true)
  _$$_SelectedCopyWith<T, _$_Selected<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<T, $Res> {
  factory _$$_ErrorCopyWith(
          _$_Error<T> value, $Res Function(_$_Error<T>) then) =
      __$$_ErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<T, $Res>
    extends _$DropdownStateCopyWithImpl<T, $Res>
    implements _$$_ErrorCopyWith<T, $Res> {
  __$$_ErrorCopyWithImpl(_$_Error<T> _value, $Res Function(_$_Error<T>) _then)
      : super(_value, (v) => _then(v as _$_Error<T>));

  @override
  _$_Error<T> get _value => super._value as _$_Error<T>;
}

/// @nodoc

class _$_Error<T> implements _Error<T> {
  const _$_Error();

  @override
  String toString() {
    return 'DropdownState<$T>.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> options) options,
    required TResult Function(List<T> options, T selected) selected,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> options)? options,
    TResult Function(List<T> options, T selected)? selected,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> options)? options,
    TResult Function(List<T> options, T selected)? selected,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Options<T> value) options,
    required TResult Function(_Selected<T> value) selected,
    required TResult Function(_Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Options<T> value)? options,
    TResult Function(_Selected<T> value)? selected,
    TResult Function(_Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Options<T> value)? options,
    TResult Function(_Selected<T> value)? selected,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements DropdownState<T> {
  const factory _Error() = _$_Error<T>;
}
