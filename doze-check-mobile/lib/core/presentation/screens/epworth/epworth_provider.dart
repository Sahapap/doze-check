import 'package:doze_check/core/domain/entities/epworth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'epworth_provider.g.dart';

@Riverpod(keepAlive: true)
class Epworth extends _$Epworth {
  @override
  EpworthSection build() => EpworthSection.zero();

  void setAnswer(String id, String name, int? value) {
    final updatedAnswers = List<EpworthAnswer>.from(state.answers);
    final existingIndex = updatedAnswers.indexWhere((a) => a.id == id);
    final newAnswer = EpworthAnswer(id: id, name: name, value: value);

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

  void reset() => state = EpworthSection.zero();

  bool validate() {
    return state.answers.every((answer) => answer.value != null);
  }

  set loadAssessment(EpworthSection assessment) => state = assessment;
}

@riverpod
EpworthAnswer? epworthAnswer(Ref ref, String questionId) =>
    ref.watch(epworthProvider.select((v) => v.getAnswerById(questionId)));

@riverpod
int epworthPositive(Ref ref) =>
    ref.watch(epworthProvider.select((v) => v.positive ? 1 : 0));

@riverpod
bool isAssessmentComplete(Ref ref) {
  final assessment = ref.watch(epworthProvider);
  return assessment.answers.isNotEmpty;
}
