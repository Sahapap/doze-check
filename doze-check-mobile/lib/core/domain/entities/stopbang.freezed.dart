// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stopbang.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StopBangSection {

 double get height; double get weight; String get gender; double get neckCircumference; List<StopBangAnswer> get answers;
/// Create a copy of StopBangSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StopBangSectionCopyWith<StopBangSection> get copyWith => _$StopBangSectionCopyWithImpl<StopBangSection>(this as StopBangSection, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StopBangSection&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.neckCircumference, neckCircumference) || other.neckCircumference == neckCircumference)&&const DeepCollectionEquality().equals(other.answers, answers));
}


@override
int get hashCode => Object.hash(runtimeType,height,weight,gender,neckCircumference,const DeepCollectionEquality().hash(answers));

@override
String toString() {
  return 'StopBangSection(height: $height, weight: $weight, gender: $gender, neckCircumference: $neckCircumference, answers: $answers)';
}


}

/// @nodoc
abstract mixin class $StopBangSectionCopyWith<$Res>  {
  factory $StopBangSectionCopyWith(StopBangSection value, $Res Function(StopBangSection) _then) = _$StopBangSectionCopyWithImpl;
@useResult
$Res call({
 double height, double weight, String gender, double neckCircumference, List<StopBangAnswer> answers
});




}
/// @nodoc
class _$StopBangSectionCopyWithImpl<$Res>
    implements $StopBangSectionCopyWith<$Res> {
  _$StopBangSectionCopyWithImpl(this._self, this._then);

  final StopBangSection _self;
  final $Res Function(StopBangSection) _then;

/// Create a copy of StopBangSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? height = null,Object? weight = null,Object? gender = null,Object? neckCircumference = null,Object? answers = null,}) {
  return _then(_self.copyWith(
height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,neckCircumference: null == neckCircumference ? _self.neckCircumference : neckCircumference // ignore: cast_nullable_to_non_nullable
as double,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<StopBangAnswer>,
  ));
}

}


/// Adds pattern-matching-related methods to [StopBangSection].
extension StopBangSectionPatterns on StopBangSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StopBangSection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StopBangSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StopBangSection value)  $default,){
final _that = this;
switch (_that) {
case _StopBangSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StopBangSection value)?  $default,){
final _that = this;
switch (_that) {
case _StopBangSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double height,  double weight,  String gender,  double neckCircumference,  List<StopBangAnswer> answers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StopBangSection() when $default != null:
return $default(_that.height,_that.weight,_that.gender,_that.neckCircumference,_that.answers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double height,  double weight,  String gender,  double neckCircumference,  List<StopBangAnswer> answers)  $default,) {final _that = this;
switch (_that) {
case _StopBangSection():
return $default(_that.height,_that.weight,_that.gender,_that.neckCircumference,_that.answers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double height,  double weight,  String gender,  double neckCircumference,  List<StopBangAnswer> answers)?  $default,) {final _that = this;
switch (_that) {
case _StopBangSection() when $default != null:
return $default(_that.height,_that.weight,_that.gender,_that.neckCircumference,_that.answers);case _:
  return null;

}
}

}

/// @nodoc


class _StopBangSection implements StopBangSection {
  const _StopBangSection({this.height = 0, this.weight = 0, this.gender = '', this.neckCircumference = 0, final  List<StopBangAnswer> answers = const []}): _answers = answers;
  

@override@JsonKey() final  double height;
@override@JsonKey() final  double weight;
@override@JsonKey() final  String gender;
@override@JsonKey() final  double neckCircumference;
 final  List<StopBangAnswer> _answers;
@override@JsonKey() List<StopBangAnswer> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}


/// Create a copy of StopBangSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StopBangSectionCopyWith<_StopBangSection> get copyWith => __$StopBangSectionCopyWithImpl<_StopBangSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StopBangSection&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.neckCircumference, neckCircumference) || other.neckCircumference == neckCircumference)&&const DeepCollectionEquality().equals(other._answers, _answers));
}


@override
int get hashCode => Object.hash(runtimeType,height,weight,gender,neckCircumference,const DeepCollectionEquality().hash(_answers));

@override
String toString() {
  return 'StopBangSection(height: $height, weight: $weight, gender: $gender, neckCircumference: $neckCircumference, answers: $answers)';
}


}

/// @nodoc
abstract mixin class _$StopBangSectionCopyWith<$Res> implements $StopBangSectionCopyWith<$Res> {
  factory _$StopBangSectionCopyWith(_StopBangSection value, $Res Function(_StopBangSection) _then) = __$StopBangSectionCopyWithImpl;
@override @useResult
$Res call({
 double height, double weight, String gender, double neckCircumference, List<StopBangAnswer> answers
});




}
/// @nodoc
class __$StopBangSectionCopyWithImpl<$Res>
    implements _$StopBangSectionCopyWith<$Res> {
  __$StopBangSectionCopyWithImpl(this._self, this._then);

  final _StopBangSection _self;
  final $Res Function(_StopBangSection) _then;

/// Create a copy of StopBangSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? height = null,Object? weight = null,Object? gender = null,Object? neckCircumference = null,Object? answers = null,}) {
  return _then(_StopBangSection(
height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,neckCircumference: null == neckCircumference ? _self.neckCircumference : neckCircumference // ignore: cast_nullable_to_non_nullable
as double,answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<StopBangAnswer>,
  ));
}


}

/// @nodoc
mixin _$StopBangAnswer {

 String get id; String get name; bool? get value;
/// Create a copy of StopBangAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StopBangAnswerCopyWith<StopBangAnswer> get copyWith => _$StopBangAnswerCopyWithImpl<StopBangAnswer>(this as StopBangAnswer, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StopBangAnswer&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,value);

@override
String toString() {
  return 'StopBangAnswer(id: $id, name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class $StopBangAnswerCopyWith<$Res>  {
  factory $StopBangAnswerCopyWith(StopBangAnswer value, $Res Function(StopBangAnswer) _then) = _$StopBangAnswerCopyWithImpl;
@useResult
$Res call({
 String id, String name, bool? value
});




}
/// @nodoc
class _$StopBangAnswerCopyWithImpl<$Res>
    implements $StopBangAnswerCopyWith<$Res> {
  _$StopBangAnswerCopyWithImpl(this._self, this._then);

  final StopBangAnswer _self;
  final $Res Function(StopBangAnswer) _then;

/// Create a copy of StopBangAnswer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? value = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [StopBangAnswer].
extension StopBangAnswerPatterns on StopBangAnswer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StopBangAnswer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StopBangAnswer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StopBangAnswer value)  $default,){
final _that = this;
switch (_that) {
case _StopBangAnswer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StopBangAnswer value)?  $default,){
final _that = this;
switch (_that) {
case _StopBangAnswer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  bool? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StopBangAnswer() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  bool? value)  $default,) {final _that = this;
switch (_that) {
case _StopBangAnswer():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  bool? value)?  $default,) {final _that = this;
switch (_that) {
case _StopBangAnswer() when $default != null:
return $default(_that.id,_that.name,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _StopBangAnswer implements StopBangAnswer {
  const _StopBangAnswer({this.id = '', this.name = '', this.value = null});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  bool? value;

/// Create a copy of StopBangAnswer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StopBangAnswerCopyWith<_StopBangAnswer> get copyWith => __$StopBangAnswerCopyWithImpl<_StopBangAnswer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StopBangAnswer&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,value);

@override
String toString() {
  return 'StopBangAnswer(id: $id, name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class _$StopBangAnswerCopyWith<$Res> implements $StopBangAnswerCopyWith<$Res> {
  factory _$StopBangAnswerCopyWith(_StopBangAnswer value, $Res Function(_StopBangAnswer) _then) = __$StopBangAnswerCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, bool? value
});




}
/// @nodoc
class __$StopBangAnswerCopyWithImpl<$Res>
    implements _$StopBangAnswerCopyWith<$Res> {
  __$StopBangAnswerCopyWithImpl(this._self, this._then);

  final _StopBangAnswer _self;
  final $Res Function(_StopBangAnswer) _then;

/// Create a copy of StopBangAnswer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? value = freezed,}) {
  return _then(_StopBangAnswer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
