import 'package:freezed_annotation/freezed_annotation.dart';

part 'stopbang.freezed.dart';

@freezed
abstract class StopBangSection with _$StopBangSection {
  const factory StopBangSection({
    @Default(0) double height,
    @Default(0) double weight,
    @Default('') String gender,
    @Default(0) double neckCircumference,
    @Default([]) List<StopBangAnswer> answers,
  }) = _StopBangSection;

  factory StopBangSection.zero() => const StopBangSection();
}

@freezed
abstract class StopBangAnswer with _$StopBangAnswer {
  const factory StopBangAnswer({
    @Default('') String id,
    @Default('') String name,
    @Default(null) bool? value,
  }) = _StopBangAnswer;

  factory StopBangAnswer.zero() => const StopBangAnswer();
}

enum BmiCategory { unknown, underweight, normal, overweight, obese }

extension StopBangExtension on StopBangSection {
  StopBangAnswer getAnswerById(String questionId) {
    return answers.firstWhere(
      (answer) => answer.id == questionId,
      orElse: () => StopBangAnswer.zero(),
    );
  }

  int get score => answers.where((answer) => answer.value == true).length;

  bool get positive => score > 3;

  /// BMI = weight / (height in m)^2
  double get bmi {
    if (weight <= 0 || height <= 0) return 0;
    final h = height / 100; // convert cm → m
    return weight / (h * h);
  }

  BmiCategory get bmiCategory {
    final value = bmi;
    if (value < 1) return BmiCategory.unknown;
    // if (value < 18.5) return BmiCategory.underweight;
    // if (value < 25) return BmiCategory.normal;
    // if (value < 30) return BmiCategory.overweight;
    if (value < 30) return BmiCategory.normal;
    return BmiCategory.obese;
  }
}
