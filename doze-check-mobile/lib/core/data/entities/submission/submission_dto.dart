import 'package:doze_check/core/domain/entities/accident.dart';
import 'package:doze_check/core/domain/entities/epworth.dart';
import 'package:doze_check/core/domain/entities/stopbang.dart';
import 'package:doze_check/core/domain/entities/submission.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'submission_dto.freezed.dart';
part 'submission_dto.g.dart';

@freezed
abstract class SubmissionDto with _$SubmissionDto {
  const factory SubmissionDto({
    @JsonKey(name: 'firstName') required String firstName,
    @JsonKey(name: 'lastName') required String lastName,
    @JsonKey(name: 'phoneNumber') required String phoneNumber,
    @JsonKey(name: 'hourSleepPerDay') required int hourSleepPerDay,
    @JsonKey(name: 'stopBang') required StopBangSectionDto stopBang,
    @JsonKey(name: 'epworth') required EpworthSectionDto epworth,
    @JsonKey(name: 'accidentHistory')
    required AccidentSectionDto accidentHistory,
    @JsonKey(name: 'keyName') String? keyName,
  }) = _SubmissionDto;

  factory SubmissionDto.fromJson(Map<String, dynamic> json) =>
      _$SubmissionDtoFromJson(json);

  factory SubmissionDto.fromDomain(Submission domain) {
    return SubmissionDto(
      firstName: domain.profile.firstName,
      lastName: domain.profile.lastName,
      phoneNumber: domain.profile.phoneNumber,
      hourSleepPerDay: domain.profile.sleepHour,
      stopBang: StopBangSectionDto.fromDomain(domain.stopBang),
      epworth: EpworthSectionDto.fromDomain(domain.epworth),
      accidentHistory: AccidentSectionDto.fromDomain(domain.accident),
    );
  }
}

@freezed
abstract class StopBangSectionDto with _$StopBangSectionDto {
  const factory StopBangSectionDto({
    @JsonKey(name: 'height') required double height,
    @JsonKey(name: 'weight') required double weight,
    @JsonKey(name: 'neckCircumference') required double neckCircumference,
    @JsonKey(name: 'answers') required List<BooleanAnswerDto> answers,
  }) = _StopBangSectionDto;

  factory StopBangSectionDto.fromJson(Map<String, dynamic> json) =>
      _$StopBangSectionDtoFromJson(json);

  factory StopBangSectionDto.fromDomain(StopBangSection domain) {
    return StopBangSectionDto(
      height: domain.height,
      weight: domain.weight,
      neckCircumference: domain.neckCircumference,
      answers: domain.answers.map((e) {
        return BooleanAnswerDto(
          id: e.id,
          name: e.name,
          answer: e.value ?? false,
        );
      }).toList(),
    );
  }
}

@freezed
abstract class EpworthSectionDto with _$EpworthSectionDto {
  const factory EpworthSectionDto({
    @JsonKey(name: 'answers') required List<NumericAnswerDto> answers,
  }) = _EpworthSectionDto;

  factory EpworthSectionDto.fromJson(Map<String, dynamic> json) =>
      _$EpworthSectionDtoFromJson(json);

  factory EpworthSectionDto.fromDomain(EpworthSection domain) {
    return EpworthSectionDto(
      answers: domain.answers.map((e) {
        return NumericAnswerDto(id: e.id, name: e.name, score: e.value ?? 0);
      }).toList(),
    );
  }
}

@freezed
abstract class AccidentSectionDto with _$AccidentSectionDto {
  const factory AccidentSectionDto({
    @JsonKey(name: 'answer') required bool answer,
  }) = _AccidentSectionDto;

  factory AccidentSectionDto.fromJson(Map<String, dynamic> json) =>
      _$AccidentSectionDtoFromJson(json);

  factory AccidentSectionDto.fromDomain(AccidentSection domain) {
    return AccidentSectionDto(answer: domain.answer ?? false);
  }
}

@freezed
abstract class BooleanAnswerDto with _$BooleanAnswerDto {
  const factory BooleanAnswerDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'answer') required bool answer,
  }) = _BooleanAnswerDto;

  factory BooleanAnswerDto.fromJson(Map<String, dynamic> json) =>
      _$BooleanAnswerDtoFromJson(json);
}

@freezed
abstract class NumericAnswerDto with _$NumericAnswerDto {
  const factory NumericAnswerDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'score') required int score,
  }) = _NumericAnswerDto;

  factory NumericAnswerDto.fromJson(Map<String, dynamic> json) =>
      _$NumericAnswerDtoFromJson(json);
}
