import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required int id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'value') required String name,
  }) = _Country;

  factory Country.fromJson(Map<String, Object?> json) =>
      _$CountryFromJson(json);
}
