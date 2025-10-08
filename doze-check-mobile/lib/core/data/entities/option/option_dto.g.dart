// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OptionDto _$OptionDtoFromJson(Map<String, dynamic> json) => _OptionDto(
  label: json['label'] as String?,
  value: (json['value'] as num?)?.toInt(),
);

Map<String, dynamic> _$OptionDtoToJson(_OptionDto instance) =>
    <String, dynamic>{'label': instance.label, 'value': instance.value};

_OptionListDto _$OptionListDtoFromJson(Map<String, dynamic> json) =>
    _OptionListDto(
      options:
          (json['options'] as List<dynamic>?)
              ?.map((e) => OptionDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$OptionListDtoToJson(_OptionListDto instance) =>
    <String, dynamic>{'options': instance.options};
