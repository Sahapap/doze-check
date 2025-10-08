import 'package:freezed_annotation/freezed_annotation.dart';

part 'epworth.freezed.dart';

@freezed
abstract class EpworthSection with _$EpworthSection {
  const factory EpworthSection({@Default([]) List<EpworthAnswer> answers}) =
      _EpworthSection;

  factory EpworthSection.zero() => const EpworthSection();
}

@freezed
abstract class EpworthAnswer with _$EpworthAnswer {
  const factory EpworthAnswer({
    @Default('') String id,
    @Default('') String name,
    @Default(null) int? value,
  }) = _EpworthAnswer;

  factory EpworthAnswer.zero() => const EpworthAnswer();
}

extension EpworthExtension on EpworthSection {
  EpworthAnswer getAnswerById(String questionId) {
    return answers.firstWhere(
      (answer) => answer.id == questionId,
      orElse: () => EpworthAnswer.zero(),
    );
  }

  int get score => answers.fold(0, (sum, answer) => sum + (answer.value ?? 0));

  bool get positive => score >= 10;
}
