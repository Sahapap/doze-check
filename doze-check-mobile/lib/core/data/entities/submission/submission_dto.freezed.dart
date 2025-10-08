// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submission_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubmissionDto {

@JsonKey(name: 'firstName') String get firstName;@JsonKey(name: 'lastName') String get lastName;@JsonKey(name: 'phoneNumber') String get phoneNumber;@JsonKey(name: 'hourSleepPerDay') int get hourSleepPerDay;@JsonKey(name: 'stopBang') StopBangSectionDto get stopBang;@JsonKey(name: 'epworth') EpworthSectionDto get epworth;@JsonKey(name: 'accidentHistory') AccidentSectionDto get accidentHistory;@JsonKey(name: 'keyName') String? get keyName;
/// Create a copy of SubmissionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmissionDtoCopyWith<SubmissionDto> get copyWith => _$SubmissionDtoCopyWithImpl<SubmissionDto>(this as SubmissionDto, _$identity);

  /// Serializes this SubmissionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmissionDto&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.hourSleepPerDay, hourSleepPerDay) || other.hourSleepPerDay == hourSleepPerDay)&&(identical(other.stopBang, stopBang) || other.stopBang == stopBang)&&(identical(other.epworth, epworth) || other.epworth == epworth)&&(identical(other.accidentHistory, accidentHistory) || other.accidentHistory == accidentHistory)&&(identical(other.keyName, keyName) || other.keyName == keyName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,phoneNumber,hourSleepPerDay,stopBang,epworth,accidentHistory,keyName);

@override
String toString() {
  return 'SubmissionDto(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, hourSleepPerDay: $hourSleepPerDay, stopBang: $stopBang, epworth: $epworth, accidentHistory: $accidentHistory, keyName: $keyName)';
}


}

/// @nodoc
abstract mixin class $SubmissionDtoCopyWith<$Res>  {
  factory $SubmissionDtoCopyWith(SubmissionDto value, $Res Function(SubmissionDto) _then) = _$SubmissionDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'firstName') String firstName,@JsonKey(name: 'lastName') String lastName,@JsonKey(name: 'phoneNumber') String phoneNumber,@JsonKey(name: 'hourSleepPerDay') int hourSleepPerDay,@JsonKey(name: 'stopBang') StopBangSectionDto stopBang,@JsonKey(name: 'epworth') EpworthSectionDto epworth,@JsonKey(name: 'accidentHistory') AccidentSectionDto accidentHistory,@JsonKey(name: 'keyName') String? keyName
});


$StopBangSectionDtoCopyWith<$Res> get stopBang;$EpworthSectionDtoCopyWith<$Res> get epworth;$AccidentSectionDtoCopyWith<$Res> get accidentHistory;

}
/// @nodoc
class _$SubmissionDtoCopyWithImpl<$Res>
    implements $SubmissionDtoCopyWith<$Res> {
  _$SubmissionDtoCopyWithImpl(this._self, this._then);

  final SubmissionDto _self;
  final $Res Function(SubmissionDto) _then;

/// Create a copy of SubmissionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? phoneNumber = null,Object? hourSleepPerDay = null,Object? stopBang = null,Object? epworth = null,Object? accidentHistory = null,Object? keyName = freezed,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,hourSleepPerDay: null == hourSleepPerDay ? _self.hourSleepPerDay : hourSleepPerDay // ignore: cast_nullable_to_non_nullable
as int,stopBang: null == stopBang ? _self.stopBang : stopBang // ignore: cast_nullable_to_non_nullable
as StopBangSectionDto,epworth: null == epworth ? _self.epworth : epworth // ignore: cast_nullable_to_non_nullable
as EpworthSectionDto,accidentHistory: null == accidentHistory ? _self.accidentHistory : accidentHistory // ignore: cast_nullable_to_non_nullable
as AccidentSectionDto,keyName: freezed == keyName ? _self.keyName : keyName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SubmissionDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StopBangSectionDtoCopyWith<$Res> get stopBang {
  
  return $StopBangSectionDtoCopyWith<$Res>(_self.stopBang, (value) {
    return _then(_self.copyWith(stopBang: value));
  });
}/// Create a copy of SubmissionDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EpworthSectionDtoCopyWith<$Res> get epworth {
  
  return $EpworthSectionDtoCopyWith<$Res>(_self.epworth, (value) {
    return _then(_self.copyWith(epworth: value));
  });
}/// Create a copy of SubmissionDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccidentSectionDtoCopyWith<$Res> get accidentHistory {
  
  return $AccidentSectionDtoCopyWith<$Res>(_self.accidentHistory, (value) {
    return _then(_self.copyWith(accidentHistory: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubmissionDto].
extension SubmissionDtoPatterns on SubmissionDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmissionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmissionDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmissionDto value)  $default,){
final _that = this;
switch (_that) {
case _SubmissionDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmissionDto value)?  $default,){
final _that = this;
switch (_that) {
case _SubmissionDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'firstName')  String firstName, @JsonKey(name: 'lastName')  String lastName, @JsonKey(name: 'phoneNumber')  String phoneNumber, @JsonKey(name: 'hourSleepPerDay')  int hourSleepPerDay, @JsonKey(name: 'stopBang')  StopBangSectionDto stopBang, @JsonKey(name: 'epworth')  EpworthSectionDto epworth, @JsonKey(name: 'accidentHistory')  AccidentSectionDto accidentHistory, @JsonKey(name: 'keyName')  String? keyName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmissionDto() when $default != null:
return $default(_that.firstName,_that.lastName,_that.phoneNumber,_that.hourSleepPerDay,_that.stopBang,_that.epworth,_that.accidentHistory,_that.keyName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'firstName')  String firstName, @JsonKey(name: 'lastName')  String lastName, @JsonKey(name: 'phoneNumber')  String phoneNumber, @JsonKey(name: 'hourSleepPerDay')  int hourSleepPerDay, @JsonKey(name: 'stopBang')  StopBangSectionDto stopBang, @JsonKey(name: 'epworth')  EpworthSectionDto epworth, @JsonKey(name: 'accidentHistory')  AccidentSectionDto accidentHistory, @JsonKey(name: 'keyName')  String? keyName)  $default,) {final _that = this;
switch (_that) {
case _SubmissionDto():
return $default(_that.firstName,_that.lastName,_that.phoneNumber,_that.hourSleepPerDay,_that.stopBang,_that.epworth,_that.accidentHistory,_that.keyName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'firstName')  String firstName, @JsonKey(name: 'lastName')  String lastName, @JsonKey(name: 'phoneNumber')  String phoneNumber, @JsonKey(name: 'hourSleepPerDay')  int hourSleepPerDay, @JsonKey(name: 'stopBang')  StopBangSectionDto stopBang, @JsonKey(name: 'epworth')  EpworthSectionDto epworth, @JsonKey(name: 'accidentHistory')  AccidentSectionDto accidentHistory, @JsonKey(name: 'keyName')  String? keyName)?  $default,) {final _that = this;
switch (_that) {
case _SubmissionDto() when $default != null:
return $default(_that.firstName,_that.lastName,_that.phoneNumber,_that.hourSleepPerDay,_that.stopBang,_that.epworth,_that.accidentHistory,_that.keyName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubmissionDto implements SubmissionDto {
  const _SubmissionDto({@JsonKey(name: 'firstName') required this.firstName, @JsonKey(name: 'lastName') required this.lastName, @JsonKey(name: 'phoneNumber') required this.phoneNumber, @JsonKey(name: 'hourSleepPerDay') required this.hourSleepPerDay, @JsonKey(name: 'stopBang') required this.stopBang, @JsonKey(name: 'epworth') required this.epworth, @JsonKey(name: 'accidentHistory') required this.accidentHistory, @JsonKey(name: 'keyName') this.keyName});
  factory _SubmissionDto.fromJson(Map<String, dynamic> json) => _$SubmissionDtoFromJson(json);

@override@JsonKey(name: 'firstName') final  String firstName;
@override@JsonKey(name: 'lastName') final  String lastName;
@override@JsonKey(name: 'phoneNumber') final  String phoneNumber;
@override@JsonKey(name: 'hourSleepPerDay') final  int hourSleepPerDay;
@override@JsonKey(name: 'stopBang') final  StopBangSectionDto stopBang;
@override@JsonKey(name: 'epworth') final  EpworthSectionDto epworth;
@override@JsonKey(name: 'accidentHistory') final  AccidentSectionDto accidentHistory;
@override@JsonKey(name: 'keyName') final  String? keyName;

/// Create a copy of SubmissionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmissionDtoCopyWith<_SubmissionDto> get copyWith => __$SubmissionDtoCopyWithImpl<_SubmissionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmissionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmissionDto&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.hourSleepPerDay, hourSleepPerDay) || other.hourSleepPerDay == hourSleepPerDay)&&(identical(other.stopBang, stopBang) || other.stopBang == stopBang)&&(identical(other.epworth, epworth) || other.epworth == epworth)&&(identical(other.accidentHistory, accidentHistory) || other.accidentHistory == accidentHistory)&&(identical(other.keyName, keyName) || other.keyName == keyName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,phoneNumber,hourSleepPerDay,stopBang,epworth,accidentHistory,keyName);

@override
String toString() {
  return 'SubmissionDto(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, hourSleepPerDay: $hourSleepPerDay, stopBang: $stopBang, epworth: $epworth, accidentHistory: $accidentHistory, keyName: $keyName)';
}


}

/// @nodoc
abstract mixin class _$SubmissionDtoCopyWith<$Res> implements $SubmissionDtoCopyWith<$Res> {
  factory _$SubmissionDtoCopyWith(_SubmissionDto value, $Res Function(_SubmissionDto) _then) = __$SubmissionDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'firstName') String firstName,@JsonKey(name: 'lastName') String lastName,@JsonKey(name: 'phoneNumber') String phoneNumber,@JsonKey(name: 'hourSleepPerDay') int hourSleepPerDay,@JsonKey(name: 'stopBang') StopBangSectionDto stopBang,@JsonKey(name: 'epworth') EpworthSectionDto epworth,@JsonKey(name: 'accidentHistory') AccidentSectionDto accidentHistory,@JsonKey(name: 'keyName') String? keyName
});


@override $StopBangSectionDtoCopyWith<$Res> get stopBang;@override $EpworthSectionDtoCopyWith<$Res> get epworth;@override $AccidentSectionDtoCopyWith<$Res> get accidentHistory;

}
/// @nodoc
class __$SubmissionDtoCopyWithImpl<$Res>
    implements _$SubmissionDtoCopyWith<$Res> {
  __$SubmissionDtoCopyWithImpl(this._self, this._then);

  final _SubmissionDto _self;
  final $Res Function(_SubmissionDto) _then;

/// Create a copy of SubmissionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? phoneNumber = null,Object? hourSleepPerDay = null,Object? stopBang = null,Object? epworth = null,Object? accidentHistory = null,Object? keyName = freezed,}) {
  return _then(_SubmissionDto(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,hourSleepPerDay: null == hourSleepPerDay ? _self.hourSleepPerDay : hourSleepPerDay // ignore: cast_nullable_to_non_nullable
as int,stopBang: null == stopBang ? _self.stopBang : stopBang // ignore: cast_nullable_to_non_nullable
as StopBangSectionDto,epworth: null == epworth ? _self.epworth : epworth // ignore: cast_nullable_to_non_nullable
as EpworthSectionDto,accidentHistory: null == accidentHistory ? _self.accidentHistory : accidentHistory // ignore: cast_nullable_to_non_nullable
as AccidentSectionDto,keyName: freezed == keyName ? _self.keyName : keyName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SubmissionDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StopBangSectionDtoCopyWith<$Res> get stopBang {
  
  return $StopBangSectionDtoCopyWith<$Res>(_self.stopBang, (value) {
    return _then(_self.copyWith(stopBang: value));
  });
}/// Create a copy of SubmissionDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EpworthSectionDtoCopyWith<$Res> get epworth {
  
  return $EpworthSectionDtoCopyWith<$Res>(_self.epworth, (value) {
    return _then(_self.copyWith(epworth: value));
  });
}/// Create a copy of SubmissionDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccidentSectionDtoCopyWith<$Res> get accidentHistory {
  
  return $AccidentSectionDtoCopyWith<$Res>(_self.accidentHistory, (value) {
    return _then(_self.copyWith(accidentHistory: value));
  });
}
}


/// @nodoc
mixin _$StopBangSectionDto {

@JsonKey(name: 'height') double get height;@JsonKey(name: 'weight') double get weight;@JsonKey(name: 'neckCircumference') double get neckCircumference;@JsonKey(name: 'answers') List<BooleanAnswerDto> get answers;
/// Create a copy of StopBangSectionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StopBangSectionDtoCopyWith<StopBangSectionDto> get copyWith => _$StopBangSectionDtoCopyWithImpl<StopBangSectionDto>(this as StopBangSectionDto, _$identity);

  /// Serializes this StopBangSectionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StopBangSectionDto&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.neckCircumference, neckCircumference) || other.neckCircumference == neckCircumference)&&const DeepCollectionEquality().equals(other.answers, answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,height,weight,neckCircumference,const DeepCollectionEquality().hash(answers));

@override
String toString() {
  return 'StopBangSectionDto(height: $height, weight: $weight, neckCircumference: $neckCircumference, answers: $answers)';
}


}

/// @nodoc
abstract mixin class $StopBangSectionDtoCopyWith<$Res>  {
  factory $StopBangSectionDtoCopyWith(StopBangSectionDto value, $Res Function(StopBangSectionDto) _then) = _$StopBangSectionDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'height') double height,@JsonKey(name: 'weight') double weight,@JsonKey(name: 'neckCircumference') double neckCircumference,@JsonKey(name: 'answers') List<BooleanAnswerDto> answers
});




}
/// @nodoc
class _$StopBangSectionDtoCopyWithImpl<$Res>
    implements $StopBangSectionDtoCopyWith<$Res> {
  _$StopBangSectionDtoCopyWithImpl(this._self, this._then);

  final StopBangSectionDto _self;
  final $Res Function(StopBangSectionDto) _then;

/// Create a copy of StopBangSectionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? height = null,Object? weight = null,Object? neckCircumference = null,Object? answers = null,}) {
  return _then(_self.copyWith(
height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,neckCircumference: null == neckCircumference ? _self.neckCircumference : neckCircumference // ignore: cast_nullable_to_non_nullable
as double,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<BooleanAnswerDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [StopBangSectionDto].
extension StopBangSectionDtoPatterns on StopBangSectionDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StopBangSectionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StopBangSectionDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StopBangSectionDto value)  $default,){
final _that = this;
switch (_that) {
case _StopBangSectionDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StopBangSectionDto value)?  $default,){
final _that = this;
switch (_that) {
case _StopBangSectionDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'height')  double height, @JsonKey(name: 'weight')  double weight, @JsonKey(name: 'neckCircumference')  double neckCircumference, @JsonKey(name: 'answers')  List<BooleanAnswerDto> answers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StopBangSectionDto() when $default != null:
return $default(_that.height,_that.weight,_that.neckCircumference,_that.answers);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'height')  double height, @JsonKey(name: 'weight')  double weight, @JsonKey(name: 'neckCircumference')  double neckCircumference, @JsonKey(name: 'answers')  List<BooleanAnswerDto> answers)  $default,) {final _that = this;
switch (_that) {
case _StopBangSectionDto():
return $default(_that.height,_that.weight,_that.neckCircumference,_that.answers);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'height')  double height, @JsonKey(name: 'weight')  double weight, @JsonKey(name: 'neckCircumference')  double neckCircumference, @JsonKey(name: 'answers')  List<BooleanAnswerDto> answers)?  $default,) {final _that = this;
switch (_that) {
case _StopBangSectionDto() when $default != null:
return $default(_that.height,_that.weight,_that.neckCircumference,_that.answers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StopBangSectionDto implements StopBangSectionDto {
  const _StopBangSectionDto({@JsonKey(name: 'height') required this.height, @JsonKey(name: 'weight') required this.weight, @JsonKey(name: 'neckCircumference') required this.neckCircumference, @JsonKey(name: 'answers') required final  List<BooleanAnswerDto> answers}): _answers = answers;
  factory _StopBangSectionDto.fromJson(Map<String, dynamic> json) => _$StopBangSectionDtoFromJson(json);

@override@JsonKey(name: 'height') final  double height;
@override@JsonKey(name: 'weight') final  double weight;
@override@JsonKey(name: 'neckCircumference') final  double neckCircumference;
 final  List<BooleanAnswerDto> _answers;
@override@JsonKey(name: 'answers') List<BooleanAnswerDto> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}


/// Create a copy of StopBangSectionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StopBangSectionDtoCopyWith<_StopBangSectionDto> get copyWith => __$StopBangSectionDtoCopyWithImpl<_StopBangSectionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StopBangSectionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StopBangSectionDto&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.neckCircumference, neckCircumference) || other.neckCircumference == neckCircumference)&&const DeepCollectionEquality().equals(other._answers, _answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,height,weight,neckCircumference,const DeepCollectionEquality().hash(_answers));

@override
String toString() {
  return 'StopBangSectionDto(height: $height, weight: $weight, neckCircumference: $neckCircumference, answers: $answers)';
}


}

/// @nodoc
abstract mixin class _$StopBangSectionDtoCopyWith<$Res> implements $StopBangSectionDtoCopyWith<$Res> {
  factory _$StopBangSectionDtoCopyWith(_StopBangSectionDto value, $Res Function(_StopBangSectionDto) _then) = __$StopBangSectionDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'height') double height,@JsonKey(name: 'weight') double weight,@JsonKey(name: 'neckCircumference') double neckCircumference,@JsonKey(name: 'answers') List<BooleanAnswerDto> answers
});




}
/// @nodoc
class __$StopBangSectionDtoCopyWithImpl<$Res>
    implements _$StopBangSectionDtoCopyWith<$Res> {
  __$StopBangSectionDtoCopyWithImpl(this._self, this._then);

  final _StopBangSectionDto _self;
  final $Res Function(_StopBangSectionDto) _then;

/// Create a copy of StopBangSectionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? height = null,Object? weight = null,Object? neckCircumference = null,Object? answers = null,}) {
  return _then(_StopBangSectionDto(
height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,neckCircumference: null == neckCircumference ? _self.neckCircumference : neckCircumference // ignore: cast_nullable_to_non_nullable
as double,answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<BooleanAnswerDto>,
  ));
}


}


/// @nodoc
mixin _$EpworthSectionDto {

@JsonKey(name: 'answers') List<NumericAnswerDto> get answers;
/// Create a copy of EpworthSectionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpworthSectionDtoCopyWith<EpworthSectionDto> get copyWith => _$EpworthSectionDtoCopyWithImpl<EpworthSectionDto>(this as EpworthSectionDto, _$identity);

  /// Serializes this EpworthSectionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpworthSectionDto&&const DeepCollectionEquality().equals(other.answers, answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(answers));

@override
String toString() {
  return 'EpworthSectionDto(answers: $answers)';
}


}

/// @nodoc
abstract mixin class $EpworthSectionDtoCopyWith<$Res>  {
  factory $EpworthSectionDtoCopyWith(EpworthSectionDto value, $Res Function(EpworthSectionDto) _then) = _$EpworthSectionDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'answers') List<NumericAnswerDto> answers
});




}
/// @nodoc
class _$EpworthSectionDtoCopyWithImpl<$Res>
    implements $EpworthSectionDtoCopyWith<$Res> {
  _$EpworthSectionDtoCopyWithImpl(this._self, this._then);

  final EpworthSectionDto _self;
  final $Res Function(EpworthSectionDto) _then;

/// Create a copy of EpworthSectionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answers = null,}) {
  return _then(_self.copyWith(
answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<NumericAnswerDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [EpworthSectionDto].
extension EpworthSectionDtoPatterns on EpworthSectionDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EpworthSectionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EpworthSectionDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EpworthSectionDto value)  $default,){
final _that = this;
switch (_that) {
case _EpworthSectionDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EpworthSectionDto value)?  $default,){
final _that = this;
switch (_that) {
case _EpworthSectionDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'answers')  List<NumericAnswerDto> answers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EpworthSectionDto() when $default != null:
return $default(_that.answers);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'answers')  List<NumericAnswerDto> answers)  $default,) {final _that = this;
switch (_that) {
case _EpworthSectionDto():
return $default(_that.answers);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'answers')  List<NumericAnswerDto> answers)?  $default,) {final _that = this;
switch (_that) {
case _EpworthSectionDto() when $default != null:
return $default(_that.answers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EpworthSectionDto implements EpworthSectionDto {
  const _EpworthSectionDto({@JsonKey(name: 'answers') required final  List<NumericAnswerDto> answers}): _answers = answers;
  factory _EpworthSectionDto.fromJson(Map<String, dynamic> json) => _$EpworthSectionDtoFromJson(json);

 final  List<NumericAnswerDto> _answers;
@override@JsonKey(name: 'answers') List<NumericAnswerDto> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}


/// Create a copy of EpworthSectionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpworthSectionDtoCopyWith<_EpworthSectionDto> get copyWith => __$EpworthSectionDtoCopyWithImpl<_EpworthSectionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpworthSectionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpworthSectionDto&&const DeepCollectionEquality().equals(other._answers, _answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_answers));

@override
String toString() {
  return 'EpworthSectionDto(answers: $answers)';
}


}

/// @nodoc
abstract mixin class _$EpworthSectionDtoCopyWith<$Res> implements $EpworthSectionDtoCopyWith<$Res> {
  factory _$EpworthSectionDtoCopyWith(_EpworthSectionDto value, $Res Function(_EpworthSectionDto) _then) = __$EpworthSectionDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'answers') List<NumericAnswerDto> answers
});




}
/// @nodoc
class __$EpworthSectionDtoCopyWithImpl<$Res>
    implements _$EpworthSectionDtoCopyWith<$Res> {
  __$EpworthSectionDtoCopyWithImpl(this._self, this._then);

  final _EpworthSectionDto _self;
  final $Res Function(_EpworthSectionDto) _then;

/// Create a copy of EpworthSectionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answers = null,}) {
  return _then(_EpworthSectionDto(
answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<NumericAnswerDto>,
  ));
}


}


/// @nodoc
mixin _$AccidentSectionDto {

@JsonKey(name: 'answer') bool get answer;
/// Create a copy of AccidentSectionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccidentSectionDtoCopyWith<AccidentSectionDto> get copyWith => _$AccidentSectionDtoCopyWithImpl<AccidentSectionDto>(this as AccidentSectionDto, _$identity);

  /// Serializes this AccidentSectionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccidentSectionDto&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answer);

@override
String toString() {
  return 'AccidentSectionDto(answer: $answer)';
}


}

/// @nodoc
abstract mixin class $AccidentSectionDtoCopyWith<$Res>  {
  factory $AccidentSectionDtoCopyWith(AccidentSectionDto value, $Res Function(AccidentSectionDto) _then) = _$AccidentSectionDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'answer') bool answer
});




}
/// @nodoc
class _$AccidentSectionDtoCopyWithImpl<$Res>
    implements $AccidentSectionDtoCopyWith<$Res> {
  _$AccidentSectionDtoCopyWithImpl(this._self, this._then);

  final AccidentSectionDto _self;
  final $Res Function(AccidentSectionDto) _then;

/// Create a copy of AccidentSectionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answer = null,}) {
  return _then(_self.copyWith(
answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AccidentSectionDto].
extension AccidentSectionDtoPatterns on AccidentSectionDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccidentSectionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccidentSectionDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccidentSectionDto value)  $default,){
final _that = this;
switch (_that) {
case _AccidentSectionDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccidentSectionDto value)?  $default,){
final _that = this;
switch (_that) {
case _AccidentSectionDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'answer')  bool answer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccidentSectionDto() when $default != null:
return $default(_that.answer);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'answer')  bool answer)  $default,) {final _that = this;
switch (_that) {
case _AccidentSectionDto():
return $default(_that.answer);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'answer')  bool answer)?  $default,) {final _that = this;
switch (_that) {
case _AccidentSectionDto() when $default != null:
return $default(_that.answer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccidentSectionDto implements AccidentSectionDto {
  const _AccidentSectionDto({@JsonKey(name: 'answer') required this.answer});
  factory _AccidentSectionDto.fromJson(Map<String, dynamic> json) => _$AccidentSectionDtoFromJson(json);

@override@JsonKey(name: 'answer') final  bool answer;

/// Create a copy of AccidentSectionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccidentSectionDtoCopyWith<_AccidentSectionDto> get copyWith => __$AccidentSectionDtoCopyWithImpl<_AccidentSectionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccidentSectionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccidentSectionDto&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answer);

@override
String toString() {
  return 'AccidentSectionDto(answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$AccidentSectionDtoCopyWith<$Res> implements $AccidentSectionDtoCopyWith<$Res> {
  factory _$AccidentSectionDtoCopyWith(_AccidentSectionDto value, $Res Function(_AccidentSectionDto) _then) = __$AccidentSectionDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'answer') bool answer
});




}
/// @nodoc
class __$AccidentSectionDtoCopyWithImpl<$Res>
    implements _$AccidentSectionDtoCopyWith<$Res> {
  __$AccidentSectionDtoCopyWithImpl(this._self, this._then);

  final _AccidentSectionDto _self;
  final $Res Function(_AccidentSectionDto) _then;

/// Create a copy of AccidentSectionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answer = null,}) {
  return _then(_AccidentSectionDto(
answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$BooleanAnswerDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'answer') bool get answer;
/// Create a copy of BooleanAnswerDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BooleanAnswerDtoCopyWith<BooleanAnswerDto> get copyWith => _$BooleanAnswerDtoCopyWithImpl<BooleanAnswerDto>(this as BooleanAnswerDto, _$identity);

  /// Serializes this BooleanAnswerDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BooleanAnswerDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,answer);

@override
String toString() {
  return 'BooleanAnswerDto(id: $id, name: $name, answer: $answer)';
}


}

/// @nodoc
abstract mixin class $BooleanAnswerDtoCopyWith<$Res>  {
  factory $BooleanAnswerDtoCopyWith(BooleanAnswerDto value, $Res Function(BooleanAnswerDto) _then) = _$BooleanAnswerDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'answer') bool answer
});




}
/// @nodoc
class _$BooleanAnswerDtoCopyWithImpl<$Res>
    implements $BooleanAnswerDtoCopyWith<$Res> {
  _$BooleanAnswerDtoCopyWithImpl(this._self, this._then);

  final BooleanAnswerDto _self;
  final $Res Function(BooleanAnswerDto) _then;

/// Create a copy of BooleanAnswerDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? answer = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BooleanAnswerDto].
extension BooleanAnswerDtoPatterns on BooleanAnswerDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BooleanAnswerDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BooleanAnswerDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BooleanAnswerDto value)  $default,){
final _that = this;
switch (_that) {
case _BooleanAnswerDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BooleanAnswerDto value)?  $default,){
final _that = this;
switch (_that) {
case _BooleanAnswerDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'answer')  bool answer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BooleanAnswerDto() when $default != null:
return $default(_that.id,_that.name,_that.answer);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'answer')  bool answer)  $default,) {final _that = this;
switch (_that) {
case _BooleanAnswerDto():
return $default(_that.id,_that.name,_that.answer);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'answer')  bool answer)?  $default,) {final _that = this;
switch (_that) {
case _BooleanAnswerDto() when $default != null:
return $default(_that.id,_that.name,_that.answer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BooleanAnswerDto implements BooleanAnswerDto {
  const _BooleanAnswerDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'answer') required this.answer});
  factory _BooleanAnswerDto.fromJson(Map<String, dynamic> json) => _$BooleanAnswerDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'answer') final  bool answer;

/// Create a copy of BooleanAnswerDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BooleanAnswerDtoCopyWith<_BooleanAnswerDto> get copyWith => __$BooleanAnswerDtoCopyWithImpl<_BooleanAnswerDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BooleanAnswerDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BooleanAnswerDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,answer);

@override
String toString() {
  return 'BooleanAnswerDto(id: $id, name: $name, answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$BooleanAnswerDtoCopyWith<$Res> implements $BooleanAnswerDtoCopyWith<$Res> {
  factory _$BooleanAnswerDtoCopyWith(_BooleanAnswerDto value, $Res Function(_BooleanAnswerDto) _then) = __$BooleanAnswerDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'answer') bool answer
});




}
/// @nodoc
class __$BooleanAnswerDtoCopyWithImpl<$Res>
    implements _$BooleanAnswerDtoCopyWith<$Res> {
  __$BooleanAnswerDtoCopyWithImpl(this._self, this._then);

  final _BooleanAnswerDto _self;
  final $Res Function(_BooleanAnswerDto) _then;

/// Create a copy of BooleanAnswerDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? answer = null,}) {
  return _then(_BooleanAnswerDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$NumericAnswerDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'score') int get score;
/// Create a copy of NumericAnswerDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumericAnswerDtoCopyWith<NumericAnswerDto> get copyWith => _$NumericAnswerDtoCopyWithImpl<NumericAnswerDto>(this as NumericAnswerDto, _$identity);

  /// Serializes this NumericAnswerDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumericAnswerDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,score);

@override
String toString() {
  return 'NumericAnswerDto(id: $id, name: $name, score: $score)';
}


}

/// @nodoc
abstract mixin class $NumericAnswerDtoCopyWith<$Res>  {
  factory $NumericAnswerDtoCopyWith(NumericAnswerDto value, $Res Function(NumericAnswerDto) _then) = _$NumericAnswerDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'score') int score
});




}
/// @nodoc
class _$NumericAnswerDtoCopyWithImpl<$Res>
    implements $NumericAnswerDtoCopyWith<$Res> {
  _$NumericAnswerDtoCopyWithImpl(this._self, this._then);

  final NumericAnswerDto _self;
  final $Res Function(NumericAnswerDto) _then;

/// Create a copy of NumericAnswerDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? score = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [NumericAnswerDto].
extension NumericAnswerDtoPatterns on NumericAnswerDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NumericAnswerDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NumericAnswerDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NumericAnswerDto value)  $default,){
final _that = this;
switch (_that) {
case _NumericAnswerDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NumericAnswerDto value)?  $default,){
final _that = this;
switch (_that) {
case _NumericAnswerDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'score')  int score)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NumericAnswerDto() when $default != null:
return $default(_that.id,_that.name,_that.score);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'score')  int score)  $default,) {final _that = this;
switch (_that) {
case _NumericAnswerDto():
return $default(_that.id,_that.name,_that.score);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'score')  int score)?  $default,) {final _that = this;
switch (_that) {
case _NumericAnswerDto() when $default != null:
return $default(_that.id,_that.name,_that.score);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NumericAnswerDto implements NumericAnswerDto {
  const _NumericAnswerDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'score') required this.score});
  factory _NumericAnswerDto.fromJson(Map<String, dynamic> json) => _$NumericAnswerDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'score') final  int score;

/// Create a copy of NumericAnswerDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NumericAnswerDtoCopyWith<_NumericAnswerDto> get copyWith => __$NumericAnswerDtoCopyWithImpl<_NumericAnswerDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NumericAnswerDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NumericAnswerDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,score);

@override
String toString() {
  return 'NumericAnswerDto(id: $id, name: $name, score: $score)';
}


}

/// @nodoc
abstract mixin class _$NumericAnswerDtoCopyWith<$Res> implements $NumericAnswerDtoCopyWith<$Res> {
  factory _$NumericAnswerDtoCopyWith(_NumericAnswerDto value, $Res Function(_NumericAnswerDto) _then) = __$NumericAnswerDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'score') int score
});




}
/// @nodoc
class __$NumericAnswerDtoCopyWithImpl<$Res>
    implements _$NumericAnswerDtoCopyWith<$Res> {
  __$NumericAnswerDtoCopyWithImpl(this._self, this._then);

  final _NumericAnswerDto _self;
  final $Res Function(_NumericAnswerDto) _then;

/// Create a copy of NumericAnswerDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? score = null,}) {
  return _then(_NumericAnswerDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
