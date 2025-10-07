// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssessmentFormDto _$AssessmentFormDtoFromJson(Map<String, dynamic> json) =>
    _AssessmentFormDto(
      topic: json['topic'] as String?,
      description: json['description'] as String?,
      questions: (json['assessments'] as List<dynamic>?)
          ?.map(
            (e) => AssessmentQuestionDto.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => AssessmentOptionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AssessmentFormDtoToJson(_AssessmentFormDto instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'description': instance.description,
      'assessments': instance.questions,
      'options': instance.options,
    };

_AssessmentQuestionDto _$AssessmentQuestionDtoFromJson(
  Map<String, dynamic> json,
) => _AssessmentQuestionDto(
  id: json['id'] as String?,
  name: json['name'] as String?,
  question: json['question'] as String?,
);

Map<String, dynamic> _$AssessmentQuestionDtoToJson(
  _AssessmentQuestionDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'question': instance.question,
};

_AssessmentOptionDto _$AssessmentOptionDtoFromJson(Map<String, dynamic> json) =>
    _AssessmentOptionDto(
      value: (json['value'] as num?)?.toInt(),
      label: json['label'] as String?,
    );

Map<String, dynamic> _$AssessmentOptionDtoToJson(
  _AssessmentOptionDto instance,
) => <String, dynamic>{'value': instance.value, 'label': instance.label};
