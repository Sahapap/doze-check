import 'package:doze_check/core/domain/entities/accident.dart';
import 'package:doze_check/core/domain/entities/epworth.dart';
import 'package:doze_check/core/domain/entities/profile.dart';
import 'package:doze_check/core/domain/entities/stopbang.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'submission.freezed.dart';

@freezed
abstract class Submission with _$Submission {
  const factory Submission({
    @Default(ProfileSection()) ProfileSection profile,
    @Default(StopBangSection()) StopBangSection stopBang,
    @Default(EpworthSection()) EpworthSection epworth,
    @Default(AccidentSection()) AccidentSection accident,
  }) = _Submission;

  factory Submission.zero() => const Submission();
}
