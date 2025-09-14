// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssessmentFormDto {

 String? get topic; String? get description;@JsonKey(name: 'assessments') List<AssessmentQuestionDto>? get questions;@JsonKey(name: 'options') List<AssessmentOptionDto>? get options;
/// Create a copy of AssessmentFormDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssessmentFormDtoCopyWith<AssessmentFormDto> get copyWith => _$AssessmentFormDtoCopyWithImpl<AssessmentFormDto>(this as AssessmentFormDto, _$identity);

  /// Serializes this AssessmentFormDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssessmentFormDto&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.questions, questions)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,topic,description,const DeepCollectionEquality().hash(questions),const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'AssessmentFormDto(topic: $topic, description: $description, questions: $questions, options: $options)';
}


}

/// @nodoc
abstract mixin class $AssessmentFormDtoCopyWith<$Res>  {
  factory $AssessmentFormDtoCopyWith(AssessmentFormDto value, $Res Function(AssessmentFormDto) _then) = _$AssessmentFormDtoCopyWithImpl;
@useResult
$Res call({
 String? topic, String? description,@JsonKey(name: 'assessments') List<AssessmentQuestionDto>? questions,@JsonKey(name: 'options') List<AssessmentOptionDto>? options
});




}
/// @nodoc
class _$AssessmentFormDtoCopyWithImpl<$Res>
    implements $AssessmentFormDtoCopyWith<$Res> {
  _$AssessmentFormDtoCopyWithImpl(this._self, this._then);

  final AssessmentFormDto _self;
  final $Res Function(AssessmentFormDto) _then;

/// Create a copy of AssessmentFormDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? topic = freezed,Object? description = freezed,Object? questions = freezed,Object? options = freezed,}) {
  return _then(_self.copyWith(
topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,questions: freezed == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<AssessmentQuestionDto>?,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<AssessmentOptionDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AssessmentFormDto].
extension AssessmentFormDtoPatterns on AssessmentFormDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssessmentFormDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssessmentFormDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssessmentFormDto value)  $default,){
final _that = this;
switch (_that) {
case _AssessmentFormDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssessmentFormDto value)?  $default,){
final _that = this;
switch (_that) {
case _AssessmentFormDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? topic,  String? description, @JsonKey(name: 'assessments')  List<AssessmentQuestionDto>? questions, @JsonKey(name: 'options')  List<AssessmentOptionDto>? options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssessmentFormDto() when $default != null:
return $default(_that.topic,_that.description,_that.questions,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? topic,  String? description, @JsonKey(name: 'assessments')  List<AssessmentQuestionDto>? questions, @JsonKey(name: 'options')  List<AssessmentOptionDto>? options)  $default,) {final _that = this;
switch (_that) {
case _AssessmentFormDto():
return $default(_that.topic,_that.description,_that.questions,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? topic,  String? description, @JsonKey(name: 'assessments')  List<AssessmentQuestionDto>? questions, @JsonKey(name: 'options')  List<AssessmentOptionDto>? options)?  $default,) {final _that = this;
switch (_that) {
case _AssessmentFormDto() when $default != null:
return $default(_that.topic,_that.description,_that.questions,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssessmentFormDto implements AssessmentFormDto {
  const _AssessmentFormDto({this.topic, this.description, @JsonKey(name: 'assessments') final  List<AssessmentQuestionDto>? questions, @JsonKey(name: 'options') final  List<AssessmentOptionDto>? options}): _questions = questions,_options = options;
  factory _AssessmentFormDto.fromJson(Map<String, dynamic> json) => _$AssessmentFormDtoFromJson(json);

@override final  String? topic;
@override final  String? description;
 final  List<AssessmentQuestionDto>? _questions;
@override@JsonKey(name: 'assessments') List<AssessmentQuestionDto>? get questions {
  final value = _questions;
  if (value == null) return null;
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AssessmentOptionDto>? _options;
@override@JsonKey(name: 'options') List<AssessmentOptionDto>? get options {
  final value = _options;
  if (value == null) return null;
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AssessmentFormDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssessmentFormDtoCopyWith<_AssessmentFormDto> get copyWith => __$AssessmentFormDtoCopyWithImpl<_AssessmentFormDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssessmentFormDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssessmentFormDto&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._questions, _questions)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,topic,description,const DeepCollectionEquality().hash(_questions),const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'AssessmentFormDto(topic: $topic, description: $description, questions: $questions, options: $options)';
}


}

/// @nodoc
abstract mixin class _$AssessmentFormDtoCopyWith<$Res> implements $AssessmentFormDtoCopyWith<$Res> {
  factory _$AssessmentFormDtoCopyWith(_AssessmentFormDto value, $Res Function(_AssessmentFormDto) _then) = __$AssessmentFormDtoCopyWithImpl;
@override @useResult
$Res call({
 String? topic, String? description,@JsonKey(name: 'assessments') List<AssessmentQuestionDto>? questions,@JsonKey(name: 'options') List<AssessmentOptionDto>? options
});




}
/// @nodoc
class __$AssessmentFormDtoCopyWithImpl<$Res>
    implements _$AssessmentFormDtoCopyWith<$Res> {
  __$AssessmentFormDtoCopyWithImpl(this._self, this._then);

  final _AssessmentFormDto _self;
  final $Res Function(_AssessmentFormDto) _then;

/// Create a copy of AssessmentFormDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? topic = freezed,Object? description = freezed,Object? questions = freezed,Object? options = freezed,}) {
  return _then(_AssessmentFormDto(
topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,questions: freezed == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<AssessmentQuestionDto>?,options: freezed == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<AssessmentOptionDto>?,
  ));
}


}


/// @nodoc
mixin _$AssessmentQuestionDto {

 String? get id; String? get name; String? get question;
/// Create a copy of AssessmentQuestionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssessmentQuestionDtoCopyWith<AssessmentQuestionDto> get copyWith => _$AssessmentQuestionDtoCopyWithImpl<AssessmentQuestionDto>(this as AssessmentQuestionDto, _$identity);

  /// Serializes this AssessmentQuestionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssessmentQuestionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.question, question) || other.question == question));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,question);

@override
String toString() {
  return 'AssessmentQuestionDto(id: $id, name: $name, question: $question)';
}


}

/// @nodoc
abstract mixin class $AssessmentQuestionDtoCopyWith<$Res>  {
  factory $AssessmentQuestionDtoCopyWith(AssessmentQuestionDto value, $Res Function(AssessmentQuestionDto) _then) = _$AssessmentQuestionDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? question
});




}
/// @nodoc
class _$AssessmentQuestionDtoCopyWithImpl<$Res>
    implements $AssessmentQuestionDtoCopyWith<$Res> {
  _$AssessmentQuestionDtoCopyWithImpl(this._self, this._then);

  final AssessmentQuestionDto _self;
  final $Res Function(AssessmentQuestionDto) _then;

/// Create a copy of AssessmentQuestionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? question = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AssessmentQuestionDto].
extension AssessmentQuestionDtoPatterns on AssessmentQuestionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssessmentQuestionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssessmentQuestionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssessmentQuestionDto value)  $default,){
final _that = this;
switch (_that) {
case _AssessmentQuestionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssessmentQuestionDto value)?  $default,){
final _that = this;
switch (_that) {
case _AssessmentQuestionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? question)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssessmentQuestionDto() when $default != null:
return $default(_that.id,_that.name,_that.question);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? question)  $default,) {final _that = this;
switch (_that) {
case _AssessmentQuestionDto():
return $default(_that.id,_that.name,_that.question);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? question)?  $default,) {final _that = this;
switch (_that) {
case _AssessmentQuestionDto() when $default != null:
return $default(_that.id,_that.name,_that.question);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssessmentQuestionDto implements AssessmentQuestionDto {
  const _AssessmentQuestionDto({this.id, this.name, this.question});
  factory _AssessmentQuestionDto.fromJson(Map<String, dynamic> json) => _$AssessmentQuestionDtoFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? question;

/// Create a copy of AssessmentQuestionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssessmentQuestionDtoCopyWith<_AssessmentQuestionDto> get copyWith => __$AssessmentQuestionDtoCopyWithImpl<_AssessmentQuestionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssessmentQuestionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssessmentQuestionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.question, question) || other.question == question));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,question);

@override
String toString() {
  return 'AssessmentQuestionDto(id: $id, name: $name, question: $question)';
}


}

/// @nodoc
abstract mixin class _$AssessmentQuestionDtoCopyWith<$Res> implements $AssessmentQuestionDtoCopyWith<$Res> {
  factory _$AssessmentQuestionDtoCopyWith(_AssessmentQuestionDto value, $Res Function(_AssessmentQuestionDto) _then) = __$AssessmentQuestionDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? question
});




}
/// @nodoc
class __$AssessmentQuestionDtoCopyWithImpl<$Res>
    implements _$AssessmentQuestionDtoCopyWith<$Res> {
  __$AssessmentQuestionDtoCopyWithImpl(this._self, this._then);

  final _AssessmentQuestionDto _self;
  final $Res Function(_AssessmentQuestionDto) _then;

/// Create a copy of AssessmentQuestionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? question = freezed,}) {
  return _then(_AssessmentQuestionDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AssessmentOptionDto {

 int? get value; String? get label;
/// Create a copy of AssessmentOptionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssessmentOptionDtoCopyWith<AssessmentOptionDto> get copyWith => _$AssessmentOptionDtoCopyWithImpl<AssessmentOptionDto>(this as AssessmentOptionDto, _$identity);

  /// Serializes this AssessmentOptionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssessmentOptionDto&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,label);

@override
String toString() {
  return 'AssessmentOptionDto(value: $value, label: $label)';
}


}

/// @nodoc
abstract mixin class $AssessmentOptionDtoCopyWith<$Res>  {
  factory $AssessmentOptionDtoCopyWith(AssessmentOptionDto value, $Res Function(AssessmentOptionDto) _then) = _$AssessmentOptionDtoCopyWithImpl;
@useResult
$Res call({
 int? value, String? label
});




}
/// @nodoc
class _$AssessmentOptionDtoCopyWithImpl<$Res>
    implements $AssessmentOptionDtoCopyWith<$Res> {
  _$AssessmentOptionDtoCopyWithImpl(this._self, this._then);

  final AssessmentOptionDto _self;
  final $Res Function(AssessmentOptionDto) _then;

/// Create a copy of AssessmentOptionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,Object? label = freezed,}) {
  return _then(_self.copyWith(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AssessmentOptionDto].
extension AssessmentOptionDtoPatterns on AssessmentOptionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssessmentOptionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssessmentOptionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssessmentOptionDto value)  $default,){
final _that = this;
switch (_that) {
case _AssessmentOptionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssessmentOptionDto value)?  $default,){
final _that = this;
switch (_that) {
case _AssessmentOptionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? value,  String? label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssessmentOptionDto() when $default != null:
return $default(_that.value,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? value,  String? label)  $default,) {final _that = this;
switch (_that) {
case _AssessmentOptionDto():
return $default(_that.value,_that.label);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? value,  String? label)?  $default,) {final _that = this;
switch (_that) {
case _AssessmentOptionDto() when $default != null:
return $default(_that.value,_that.label);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssessmentOptionDto implements AssessmentOptionDto {
  const _AssessmentOptionDto({this.value, this.label});
  factory _AssessmentOptionDto.fromJson(Map<String, dynamic> json) => _$AssessmentOptionDtoFromJson(json);

@override final  int? value;
@override final  String? label;

/// Create a copy of AssessmentOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssessmentOptionDtoCopyWith<_AssessmentOptionDto> get copyWith => __$AssessmentOptionDtoCopyWithImpl<_AssessmentOptionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssessmentOptionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssessmentOptionDto&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,label);

@override
String toString() {
  return 'AssessmentOptionDto(value: $value, label: $label)';
}


}

/// @nodoc
abstract mixin class _$AssessmentOptionDtoCopyWith<$Res> implements $AssessmentOptionDtoCopyWith<$Res> {
  factory _$AssessmentOptionDtoCopyWith(_AssessmentOptionDto value, $Res Function(_AssessmentOptionDto) _then) = __$AssessmentOptionDtoCopyWithImpl;
@override @useResult
$Res call({
 int? value, String? label
});




}
/// @nodoc
class __$AssessmentOptionDtoCopyWithImpl<$Res>
    implements _$AssessmentOptionDtoCopyWith<$Res> {
  __$AssessmentOptionDtoCopyWithImpl(this._self, this._then);

  final _AssessmentOptionDto _self;
  final $Res Function(_AssessmentOptionDto) _then;

/// Create a copy of AssessmentOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? label = freezed,}) {
  return _then(_AssessmentOptionDto(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
