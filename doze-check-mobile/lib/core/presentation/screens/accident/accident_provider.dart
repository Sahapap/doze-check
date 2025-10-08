import 'package:doze_check/core/domain/entities/accident.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'accident_provider.g.dart';

@Riverpod(keepAlive: true)
class Accident extends _$Accident {
  @override
  AccidentSection build() => AccidentSection.zero();

  void setAnswer(bool? answer) {
    state = state.copyWith(answer: answer ?? false);
  }

  void reset() => state = AccidentSection.zero();

  bool validate() {
    return state.answer != null;
  }
}

@riverpod
int accidentPositive(Ref ref) =>
    ref.watch(accidentProvider.select((v) => v.positive ? 1 : 0));

