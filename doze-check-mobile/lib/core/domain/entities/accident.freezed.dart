// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accident.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccidentSection {

 bool? get answer;
/// Create a copy of AccidentSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccidentSectionCopyWith<AccidentSection> get copyWith => _$AccidentSectionCopyWithImpl<AccidentSection>(this as AccidentSection, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccidentSection&&(identical(other.answer, answer) || other.answer == answer));
}


@override
int get hashCode => Object.hash(runtimeType,answer);

@override
String toString() {
  return 'AccidentSection(answer: $answer)';
}


}

/// @nodoc
abstract mixin class $AccidentSectionCopyWith<$Res>  {
  factory $AccidentSectionCopyWith(AccidentSection value, $Res Function(AccidentSection) _then) = _$AccidentSectionCopyWithImpl;
@useResult
$Res call({
 bool? answer
});




}
/// @nodoc
class _$AccidentSectionCopyWithImpl<$Res>
    implements $AccidentSectionCopyWith<$Res> {
  _$AccidentSectionCopyWithImpl(this._self, this._then);

  final AccidentSection _self;
  final $Res Function(AccidentSection) _then;

/// Create a copy of AccidentSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answer = freezed,}) {
  return _then(_self.copyWith(
answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [AccidentSection].
extension AccidentSectionPatterns on AccidentSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccidentSection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccidentSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccidentSection value)  $default,){
final _that = this;
switch (_that) {
case _AccidentSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccidentSection value)?  $default,){
final _that = this;
switch (_that) {
case _AccidentSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? answer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccidentSection() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? answer)  $default,) {final _that = this;
switch (_that) {
case _AccidentSection():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? answer)?  $default,) {final _that = this;
switch (_that) {
case _AccidentSection() when $default != null:
return $default(_that.answer);case _:
  return null;

}
}

}

/// @nodoc


class _AccidentSection implements AccidentSection {
  const _AccidentSection({this.answer = null});
  

@override@JsonKey() final  bool? answer;

/// Create a copy of AccidentSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccidentSectionCopyWith<_AccidentSection> get copyWith => __$AccidentSectionCopyWithImpl<_AccidentSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccidentSection&&(identical(other.answer, answer) || other.answer == answer));
}


@override
int get hashCode => Object.hash(runtimeType,answer);

@override
String toString() {
  return 'AccidentSection(answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$AccidentSectionCopyWith<$Res> implements $AccidentSectionCopyWith<$Res> {
  factory _$AccidentSectionCopyWith(_AccidentSection value, $Res Function(_AccidentSection) _then) = __$AccidentSectionCopyWithImpl;
@override @useResult
$Res call({
 bool? answer
});




}
/// @nodoc
class __$AccidentSectionCopyWithImpl<$Res>
    implements _$AccidentSectionCopyWith<$Res> {
  __$AccidentSectionCopyWithImpl(this._self, this._then);

  final _AccidentSection _self;
  final $Res Function(_AccidentSection) _then;

/// Create a copy of AccidentSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answer = freezed,}) {
  return _then(_AccidentSection(
answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
