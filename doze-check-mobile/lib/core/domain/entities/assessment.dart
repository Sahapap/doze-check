import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment.freezed.dart';

@freezed
abstract class AssessmentForm with _$AssessmentForm {
  const factory AssessmentForm({
    required String topic,
    required String description,
    required List<AssessmentQuestion> questions,
    required List<AssessmentOption> options,
  }) = _AssessmentForm;
}

@freezed
abstract class AssessmentQuestion with _$AssessmentQuestion {
  const factory AssessmentQuestion({
    required String id,
    required String name,
    required String question,
  }) = _AssessmentQuestion;
}

@freezed
abstract class AssessmentOption with _$AssessmentOption {
  const factory AssessmentOption({required int value, required String label}) =
      _AssessmentOption;
}
