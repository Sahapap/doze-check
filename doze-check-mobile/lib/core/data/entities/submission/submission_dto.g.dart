// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submission_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubmissionDto _$SubmissionDtoFromJson(Map<String, dynamic> json) =>
    _SubmissionDto(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      hourSleepPerDay: (json['hourSleepPerDay'] as num).toInt(),
      stopBang: StopBangSectionDto.fromJson(
        json['stopBang'] as Map<String, dynamic>,
      ),
      epworth: EpworthSectionDto.fromJson(
        json['epworth'] as Map<String, dynamic>,
      ),
      accidentHistory: AccidentSectionDto.fromJson(
        json['accidentHistory'] as Map<String, dynamic>,
      ),
      keyName: json['keyName'] as String?,
    );

Map<String, dynamic> _$SubmissionDtoToJson(_SubmissionDto instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'hourSleepPerDay': instance.hourSleepPerDay,
      'stopBang': instance.stopBang,
      'epworth': instance.epworth,
      'accidentHistory': instance.accidentHistory,
      'keyName': instance.keyName,
    };

_StopBangSectionDto _$StopBangSectionDtoFromJson(Map<String, dynamic> json) =>
    _StopBangSectionDto(
      height: (json['height'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      neckCircumference: (json['neckCircumference'] as num).toDouble(),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => BooleanAnswerDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StopBangSectionDtoToJson(_StopBangSectionDto instance) =>
    <String, dynamic>{
      'height': instance.height,
      'weight': instance.weight,
      'neckCircumference': instance.neckCircumference,
      'answers': instance.answers,
    };

_EpworthSectionDto _$EpworthSectionDtoFromJson(Map<String, dynamic> json) =>
    _EpworthSectionDto(
      answers: (json['answers'] as List<dynamic>)
          .map((e) => NumericAnswerDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EpworthSectionDtoToJson(_EpworthSectionDto instance) =>
    <String, dynamic>{'answers': instance.answers};

_AccidentSectionDto _$AccidentSectionDtoFromJson(Map<String, dynamic> json) =>
    _AccidentSectionDto(answer: json['answer'] as bool);

Map<String, dynamic> _$AccidentSectionDtoToJson(_AccidentSectionDto instance) =>
    <String, dynamic>{'answer': instance.answer};

_BooleanAnswerDto _$BooleanAnswerDtoFromJson(Map<String, dynamic> json) =>
    _BooleanAnswerDto(
      id: json['id'] as String,
      name: json['name'] as String,
      answer: json['answer'] as bool,
    );

Map<String, dynamic> _$BooleanAnswerDtoToJson(_BooleanAnswerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'answer': instance.answer,
    };

_NumericAnswerDto _$NumericAnswerDtoFromJson(Map<String, dynamic> json) =>
    _NumericAnswerDto(
      id: json['id'] as String,
      name: json['name'] as String,
      score: (json['score'] as num).toInt(),
    );

Map<String, dynamic> _$NumericAnswerDtoToJson(_NumericAnswerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'score': instance.score,
    };
