// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epworth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EpworthSection {

 List<EpworthAnswer> get answers;
/// Create a copy of EpworthSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpworthSectionCopyWith<EpworthSection> get copyWith => _$EpworthSectionCopyWithImpl<EpworthSection>(this as EpworthSection, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpworthSection&&const DeepCollectionEquality().equals(other.answers, answers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(answers));

@override
String toString() {
  return 'EpworthSection(answers: $answers)';
}


}

/// @nodoc
abstract mixin class $EpworthSectionCopyWith<$Res>  {
  factory $EpworthSectionCopyWith(EpworthSection value, $Res Function(EpworthSection) _then) = _$EpworthSectionCopyWithImpl;
@useResult
$Res call({
 List<EpworthAnswer> answers
});




}
/// @nodoc
class _$EpworthSectionCopyWithImpl<$Res>
    implements $EpworthSectionCopyWith<$Res> {
  _$EpworthSectionCopyWithImpl(this._self, this._then);

  final EpworthSection _self;
  final $Res Function(EpworthSection) _then;

/// Create a copy of EpworthSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answers = null,}) {
  return _then(_self.copyWith(
answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<EpworthAnswer>,
  ));
}

}


/// Adds pattern-matching-related methods to [EpworthSection].
extension EpworthSectionPatterns on EpworthSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EpworthSection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EpworthSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EpworthSection value)  $default,){
final _that = this;
switch (_that) {
case _EpworthSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EpworthSection value)?  $default,){
final _that = this;
switch (_that) {
case _EpworthSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EpworthAnswer> answers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EpworthSection() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EpworthAnswer> answers)  $default,) {final _that = this;
switch (_that) {
case _EpworthSection():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EpworthAnswer> answers)?  $default,) {final _that = this;
switch (_that) {
case _EpworthSection() when $default != null:
return $default(_that.answers);case _:
  return null;

}
}

}

/// @nodoc


class _EpworthSection implements EpworthSection {
  const _EpworthSection({final  List<EpworthAnswer> answers = const []}): _answers = answers;
  

 final  List<EpworthAnswer> _answers;
@override@JsonKey() List<EpworthAnswer> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}


/// Create a copy of EpworthSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpworthSectionCopyWith<_EpworthSection> get copyWith => __$EpworthSectionCopyWithImpl<_EpworthSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpworthSection&&const DeepCollectionEquality().equals(other._answers, _answers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_answers));

@override
String toString() {
  return 'EpworthSection(answers: $answers)';
}


}

/// @nodoc
abstract mixin class _$EpworthSectionCopyWith<$Res> implements $EpworthSectionCopyWith<$Res> {
  factory _$EpworthSectionCopyWith(_EpworthSection value, $Res Function(_EpworthSection) _then) = __$EpworthSectionCopyWithImpl;
@override @useResult
$Res call({
 List<EpworthAnswer> answers
});




}
/// @nodoc
class __$EpworthSectionCopyWithImpl<$Res>
    implements _$EpworthSectionCopyWith<$Res> {
  __$EpworthSectionCopyWithImpl(this._self, this._then);

  final _EpworthSection _self;
  final $Res Function(_EpworthSection) _then;

/// Create a copy of EpworthSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answers = null,}) {
  return _then(_EpworthSection(
answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<EpworthAnswer>,
  ));
}


}

/// @nodoc
mixin _$EpworthAnswer {

 String get id; String get name; int? get value;
/// Create a copy of EpworthAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpworthAnswerCopyWith<EpworthAnswer> get copyWith => _$EpworthAnswerCopyWithImpl<EpworthAnswer>(this as EpworthAnswer, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpworthAnswer&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,value);

@override
String toString() {
  return 'EpworthAnswer(id: $id, name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class $EpworthAnswerCopyWith<$Res>  {
  factory $EpworthAnswerCopyWith(EpworthAnswer value, $Res Function(EpworthAnswer) _then) = _$EpworthAnswerCopyWithImpl;
@useResult
$Res call({
 String id, String name, int? value
});




}
/// @nodoc
class _$EpworthAnswerCopyWithImpl<$Res>
    implements $EpworthAnswerCopyWith<$Res> {
  _$EpworthAnswerCopyWithImpl(this._self, this._then);

  final EpworthAnswer _self;
  final $Res Function(EpworthAnswer) _then;

/// Create a copy of EpworthAnswer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? value = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [EpworthAnswer].
extension EpworthAnswerPatterns on EpworthAnswer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EpworthAnswer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EpworthAnswer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EpworthAnswer value)  $default,){
final _that = this;
switch (_that) {
case _EpworthAnswer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EpworthAnswer value)?  $default,){
final _that = this;
switch (_that) {
case _EpworthAnswer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EpworthAnswer() when $default != null:
return $default(_that.id,_that.name,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int? value)  $default,) {final _that = this;
switch (_that) {
case _EpworthAnswer():
return $default(_that.id,_that.name,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int? value)?  $default,) {final _that = this;
switch (_that) {
case _EpworthAnswer() when $default != null:
return $default(_that.id,_that.name,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _EpworthAnswer implements EpworthAnswer {
  const _EpworthAnswer({this.id = '', this.name = '', this.value = null});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  int? value;

/// Create a copy of EpworthAnswer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpworthAnswerCopyWith<_EpworthAnswer> get copyWith => __$EpworthAnswerCopyWithImpl<_EpworthAnswer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpworthAnswer&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,value);

@override
String toString() {
  return 'EpworthAnswer(id: $id, name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class _$EpworthAnswerCopyWith<$Res> implements $EpworthAnswerCopyWith<$Res> {
  factory _$EpworthAnswerCopyWith(_EpworthAnswer value, $Res Function(_EpworthAnswer) _then) = __$EpworthAnswerCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int? value
});




}
/// @nodoc
class __$EpworthAnswerCopyWithImpl<$Res>
    implements _$EpworthAnswerCopyWith<$Res> {
  __$EpworthAnswerCopyWithImpl(this._self, this._then);

  final _EpworthAnswer _self;
  final $Res Function(_EpworthAnswer) _then;

/// Create a copy of EpworthAnswer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? value = freezed,}) {
  return _then(_EpworthAnswer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
