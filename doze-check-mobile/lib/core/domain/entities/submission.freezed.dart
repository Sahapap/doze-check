// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Submission {

 ProfileSection get profile; StopBangSection get stopBang; EpworthSection get epworth; AccidentSection get accident;
/// Create a copy of Submission
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmissionCopyWith<Submission> get copyWith => _$SubmissionCopyWithImpl<Submission>(this as Submission, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Submission&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.stopBang, stopBang) || other.stopBang == stopBang)&&(identical(other.epworth, epworth) || other.epworth == epworth)&&(identical(other.accident, accident) || other.accident == accident));
}


@override
int get hashCode => Object.hash(runtimeType,profile,stopBang,epworth,accident);

@override
String toString() {
  return 'Submission(profile: $profile, stopBang: $stopBang, epworth: $epworth, accident: $accident)';
}


}

/// @nodoc
abstract mixin class $SubmissionCopyWith<$Res>  {
  factory $SubmissionCopyWith(Submission value, $Res Function(Submission) _then) = _$SubmissionCopyWithImpl;
@useResult
$Res call({
 ProfileSection profile, StopBangSection stopBang, EpworthSection epworth, AccidentSection accident
});


$ProfileSectionCopyWith<$Res> get profile;$StopBangSectionCopyWith<$Res> get stopBang;$EpworthSectionCopyWith<$Res> get epworth;$AccidentSectionCopyWith<$Res> get accident;

}
/// @nodoc
class _$SubmissionCopyWithImpl<$Res>
    implements $SubmissionCopyWith<$Res> {
  _$SubmissionCopyWithImpl(this._self, this._then);

  final Submission _self;
  final $Res Function(Submission) _then;

/// Create a copy of Submission
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profile = null,Object? stopBang = null,Object? epworth = null,Object? accident = null,}) {
  return _then(_self.copyWith(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileSection,stopBang: null == stopBang ? _self.stopBang : stopBang // ignore: cast_nullable_to_non_nullable
as StopBangSection,epworth: null == epworth ? _self.epworth : epworth // ignore: cast_nullable_to_non_nullable
as EpworthSection,accident: null == accident ? _self.accident : accident // ignore: cast_nullable_to_non_nullable
as AccidentSection,
  ));
}
/// Create a copy of Submission
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileSectionCopyWith<$Res> get profile {
  
  return $ProfileSectionCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of Submission
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StopBangSectionCopyWith<$Res> get stopBang {
  
  return $StopBangSectionCopyWith<$Res>(_self.stopBang, (value) {
    return _then(_self.copyWith(stopBang: value));
  });
}/// Create a copy of Submission
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EpworthSectionCopyWith<$Res> get epworth {
  
  return $EpworthSectionCopyWith<$Res>(_self.epworth, (value) {
    return _then(_self.copyWith(epworth: value));
  });
}/// Create a copy of Submission
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccidentSectionCopyWith<$Res> get accident {
  
  return $AccidentSectionCopyWith<$Res>(_self.accident, (value) {
    return _then(_self.copyWith(accident: value));
  });
}
}


/// Adds pattern-matching-related methods to [Submission].
extension SubmissionPatterns on Submission {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Submission value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Submission() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Submission value)  $default,){
final _that = this;
switch (_that) {
case _Submission():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Submission value)?  $default,){
final _that = this;
switch (_that) {
case _Submission() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProfileSection profile,  StopBangSection stopBang,  EpworthSection epworth,  AccidentSection accident)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Submission() when $default != null:
return $default(_that.profile,_that.stopBang,_that.epworth,_that.accident);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProfileSection profile,  StopBangSection stopBang,  EpworthSection epworth,  AccidentSection accident)  $default,) {final _that = this;
switch (_that) {
case _Submission():
return $default(_that.profile,_that.stopBang,_that.epworth,_that.accident);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProfileSection profile,  StopBangSection stopBang,  EpworthSection epworth,  AccidentSection accident)?  $default,) {final _that = this;
switch (_that) {
case _Submission() when $default != null:
return $default(_that.profile,_that.stopBang,_that.epworth,_that.accident);case _:
  return null;

}
}

}

/// @nodoc


class _Submission implements Submission {
  const _Submission({this.profile = const ProfileSection(), this.stopBang = const StopBangSection(), this.epworth = const EpworthSection(), this.accident = const AccidentSection()});
  

@override@JsonKey() final  ProfileSection profile;
@override@JsonKey() final  StopBangSection stopBang;
@override@JsonKey() final  EpworthSection epworth;
@override@JsonKey() final  AccidentSection accident;

/// Create a copy of Submission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmissionCopyWith<_Submission> get copyWith => __$SubmissionCopyWithImpl<_Submission>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submission&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.stopBang, stopBang) || other.stopBang == stopBang)&&(identical(other.epworth, epworth) || other.epworth == epworth)&&(identical(other.accident, accident) || other.accident == accident));
}


@override
int get hashCode => Object.hash(runtimeType,profile,stopBang,epworth,accident);

@override
String toString() {
  return 'Submission(profile: $profile, stopBang: $stopBang, epworth: $epworth, accident: $accident)';
}


}

/// @nodoc
abstract mixin class _$SubmissionCopyWith<$Res> implements $SubmissionCopyWith<$Res> {
  factory _$SubmissionCopyWith(_Submission value, $Res Function(_Submission) _then) = __$SubmissionCopyWithImpl;
@override @useResult
$Res call({
 ProfileSection profile, StopBangSection stopBang, EpworthSection epworth, AccidentSection accident
});


@override $ProfileSectionCopyWith<$Res> get profile;@override $StopBangSectionCopyWith<$Res> get stopBang;@override $EpworthSectionCopyWith<$Res> get epworth;@override $AccidentSectionCopyWith<$Res> get accident;

}
/// @nodoc
class __$SubmissionCopyWithImpl<$Res>
    implements _$SubmissionCopyWith<$Res> {
  __$SubmissionCopyWithImpl(this._self, this._then);

  final _Submission _self;
  final $Res Function(_Submission) _then;

/// Create a copy of Submission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profile = null,Object? stopBang = null,Object? epworth = null,Object? accident = null,}) {
  return _then(_Submission(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileSection,stopBang: null == stopBang ? _self.stopBang : stopBang // ignore: cast_nullable_to_non_nullable
as StopBangSection,epworth: null == epworth ? _self.epworth : epworth // ignore: cast_nullable_to_non_nullable
as EpworthSection,accident: null == accident ? _self.accident : accident // ignore: cast_nullable_to_non_nullable
as AccidentSection,
  ));
}

/// Create a copy of Submission
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileSectionCopyWith<$Res> get profile {
  
  return $ProfileSectionCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of Submission
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StopBangSectionCopyWith<$Res> get stopBang {
  
  return $StopBangSectionCopyWith<$Res>(_self.stopBang, (value) {
    return _then(_self.copyWith(stopBang: value));
  });
}/// Create a copy of Submission
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EpworthSectionCopyWith<$Res> get epworth {
  
  return $EpworthSectionCopyWith<$Res>(_self.epworth, (value) {
    return _then(_self.copyWith(epworth: value));
  });
}/// Create a copy of Submission
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccidentSectionCopyWith<$Res> get accident {
  
  return $AccidentSectionCopyWith<$Res>(_self.accident, (value) {
    return _then(_self.copyWith(accident: value));
  });
}
}

// dart format on
