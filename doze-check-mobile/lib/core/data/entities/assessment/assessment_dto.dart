import 'package:doze_check/core/domain/entities/assessment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_dto.freezed.dart';
part 'assessment_dto.g.dart';

@freezed
abstract class AssessmentFormDto with _$AssessmentFormDto {
  const factory AssessmentFormDto({
    String? topic,
    String? description,
    @JsonKey(name: 'assessments') List<AssessmentQuestionDto>? questions,
    @JsonKey(name: 'options') List<AssessmentOptionDto>? options,
  }) = _AssessmentFormDto;

  factory AssessmentFormDto.fromJson(Map<String, dynamic> json) =>
      _$AssessmentFormDtoFromJson(json);
}

@freezed
abstract class AssessmentQuestionDto with _$AssessmentQuestionDto {
  const factory AssessmentQuestionDto({
    String? id,
    String? name,
    String? question,
  }) = _AssessmentQuestionDto;

  factory AssessmentQuestionDto.fromJson(Map<String, dynamic> json) =>
      _$AssessmentQuestionDtoFromJson(json);
}

@freezed
abstract class AssessmentOptionDto with _$AssessmentOptionDto {
  const factory AssessmentOptionDto({int? value, String? label}) =
      _AssessmentOptionDto;

  factory AssessmentOptionDto.fromJson(Map<String, dynamic> json) =>
      _$AssessmentOptionDtoFromJson(json);
}

extension AssessmentFormMapper on AssessmentFormDto {
  AssessmentForm toDomain() {
    return AssessmentForm(
      topic: topic ?? '',
      description: description ?? '',
      questions: questions?.map((e) => e.toDomain()).toList() ?? [],
      options: options?.map((e) => e.toDomain()).toList() ?? [],
    );
  }
}

extension AssessmentQuestionMapper on AssessmentQuestionDto {
  AssessmentQuestion toDomain() {
    return AssessmentQuestion(
      id: id ?? '',
      name: name ?? '',
      question: question ?? '',
    );
  }
}

extension AssessmentOptionMapper on AssessmentOptionDto {
  AssessmentOption toDomain() {
    return AssessmentOption(value: value ?? 0, label: label ?? '');
  }
}
