import 'package:doze_check/core/domain/entities/option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_dto.freezed.dart';
part 'option_dto.g.dart';

@freezed
abstract class OptionDto with _$OptionDto {
  const factory OptionDto({String? label, int? value}) = _OptionDto;

  factory OptionDto.fromJson(Map<String, dynamic> json) =>
      _$OptionDtoFromJson(json);
}

@freezed
abstract class OptionListDto with _$OptionListDto {
  const factory OptionListDto({@Default([]) List<OptionDto> options}) =
      _OptionListDto;

  factory OptionListDto.fromJson(List<dynamic> json) => OptionListDto(
    options: json
        .map((e) => OptionDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

extension OptionMapper on OptionDto {
  Option toDomain() {
    return Option(label: label ?? '', value: value ?? 0);
  }
}

extension OptionListMapper on OptionListDto {
  List<Option> toDomain() {
    return options.map((e) => e.toDomain()).toList();
  }
}
