import 'package:doze_check/core/domain/entities/stopbang.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stopbang_provider.g.dart';

@Riverpod(keepAlive: true)
class StopBang extends _$StopBang {
  @override
  StopBangSection build() => StopBangSection.zero();

  void updateHeight(double value) => state = state.copyWith(height: value);

  void updateWeight(double value) => state = state.copyWith(weight: value);

  void updateGender(String value) => state = state.copyWith(gender: value);

  void updateNeckCircumference(double value) =>
      state = state.copyWith(neckCircumference: value);

  void setAnswer(String id, String name, bool? answer) {
    final updatedAnswers = List<StopBangAnswer>.from(state.answers);
    final existingIndex = updatedAnswers.indexWhere((a) => a.id == id);
    final newAnswer = StopBangAnswer(id: id, name: name, value: answer);

    if (existingIndex != -1) {
      updatedAnswers[existingIndex] = newAnswer;
    } else {
      updatedAnswers.add(newAnswer);
    }

    state = state.copyWith(answers: updatedAnswers);
  }

  void removeAnswer(String id) {
    final updatedAnswers = state.answers.where((a) => a.id != id).toList();
    state = state.copyWith(answers: updatedAnswers);
  }

  void reset() => state = StopBangSection.zero();

  bool validate() {
    return state.answers.every((answer) => answer.value != null);
  }

  set loadAssessment(StopBangSection assessment) => state = assessment;
}

@riverpod
StopBangAnswer? stopBangAnswer(Ref ref, String questionId) =>
    ref.watch(stopBangProvider.select((v) => v.getAnswerById(questionId)));

@riverpod
double stopBangBmi(Ref ref) => ref.watch(stopBangProvider.select((v) => v.bmi));

@riverpod
BmiCategory stopBangBmiCategory(Ref ref) =>
    ref.watch(stopBangProvider.select((v) => v.bmiCategory));

@riverpod
int stopBangPositive(Ref ref) =>
    ref.watch(stopBangProvider.select((v) => v.positive ? 1 : 0));

@riverpod
bool isAssessmentComplete(Ref ref) {
  final assessment = ref.watch(stopBangProvider);
  return assessment.height > 0 &&
      assessment.weight > 0 &&
      assessment.gender.isNotEmpty &&
      assessment.neckCircumference > 0 &&
      assessment.answers.isNotEmpty;
}
