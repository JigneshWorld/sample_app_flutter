import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';
part 'state.g.dart';

@freezed
class State with _$State {
  const factory State({
    required int id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'value') required String name,
  }) = _State;

  factory State.fromJson(Map<String, Object?> json) => _$StateFromJson(json);
}
