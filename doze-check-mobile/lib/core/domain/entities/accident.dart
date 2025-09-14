import 'package:freezed_annotation/freezed_annotation.dart';

part 'accident.freezed.dart';

@freezed
abstract class AccidentSection with _$AccidentSection {
  const factory AccidentSection({@Default(null) bool? answer}) =
      _AccidentSection;

  factory AccidentSection.zero() => const AccidentSection();
}

extension AccidentExtension on AccidentSection {
  bool get positive => answer == true;
}
