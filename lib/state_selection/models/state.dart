import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class State with _$State {
  const factory State({
    required int id,
    required String name,
  }) = _State;
}
