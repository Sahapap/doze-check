// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AssessmentForm {

 String get topic; String get description; List<AssessmentQuestion> get questions; List<AssessmentOption> get options;
/// Create a copy of AssessmentForm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssessmentFormCopyWith<AssessmentForm> get copyWith => _$AssessmentFormCopyWithImpl<AssessmentForm>(this as AssessmentForm, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssessmentForm&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.questions, questions)&&const DeepCollectionEquality().equals(other.options, options));
}


@override
int get hashCode => Object.hash(runtimeType,topic,description,const DeepCollectionEquality().hash(questions),const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'AssessmentForm(topic: $topic, description: $description, questions: $questions, options: $options)';
}


}

/// @nodoc
abstract mixin class $AssessmentFormCopyWith<$Res>  {
  factory $AssessmentFormCopyWith(AssessmentForm value, $Res Function(AssessmentForm) _then) = _$AssessmentFormCopyWithImpl;
@useResult
$Res call({
 String topic, String description, List<AssessmentQuestion> questions, List<AssessmentOption> options
});




}
/// @nodoc
class _$AssessmentFormCopyWithImpl<$Res>
    implements $AssessmentFormCopyWith<$Res> {
  _$AssessmentFormCopyWithImpl(this._self, this._then);

  final AssessmentForm _self;
  final $Res Function(AssessmentForm) _then;

/// Create a copy of AssessmentForm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? topic = null,Object? description = null,Object? questions = null,Object? options = null,}) {
  return _then(_self.copyWith(
topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,questions: null == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<AssessmentQuestion>,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<AssessmentOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [AssessmentForm].
extension AssessmentFormPatterns on AssessmentForm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssessmentForm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssessmentForm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssessmentForm value)  $default,){
final _that = this;
switch (_that) {
case _AssessmentForm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssessmentForm value)?  $default,){
final _that = this;
switch (_that) {
case _AssessmentForm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String topic,  String description,  List<AssessmentQuestion> questions,  List<AssessmentOption> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssessmentForm() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String topic,  String description,  List<AssessmentQuestion> questions,  List<AssessmentOption> options)  $default,) {final _that = this;
switch (_that) {
case _AssessmentForm():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String topic,  String description,  List<AssessmentQuestion> questions,  List<AssessmentOption> options)?  $default,) {final _that = this;
switch (_that) {
case _AssessmentForm() when $default != null:
return $default(_that.topic,_that.description,_that.questions,_that.options);case _:
  return null;

}
}

}

/// @nodoc


class _AssessmentForm implements AssessmentForm {
  const _AssessmentForm({required this.topic, required this.description, required final  List<AssessmentQuestion> questions, required final  List<AssessmentOption> options}): _questions = questions,_options = options;
  

@override final  String topic;
@override final  String description;
 final  List<AssessmentQuestion> _questions;
@override List<AssessmentQuestion> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}

 final  List<AssessmentOption> _options;
@override List<AssessmentOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of AssessmentForm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssessmentFormCopyWith<_AssessmentForm> get copyWith => __$AssessmentFormCopyWithImpl<_AssessmentForm>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssessmentForm&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._questions, _questions)&&const DeepCollectionEquality().equals(other._options, _options));
}


@override
int get hashCode => Object.hash(runtimeType,topic,description,const DeepCollectionEquality().hash(_questions),const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'AssessmentForm(topic: $topic, description: $description, questions: $questions, options: $options)';
}


}

/// @nodoc
abstract mixin class _$AssessmentFormCopyWith<$Res> implements $AssessmentFormCopyWith<$Res> {
  factory _$AssessmentFormCopyWith(_AssessmentForm value, $Res Function(_AssessmentForm) _then) = __$AssessmentFormCopyWithImpl;
@override @useResult
$Res call({
 String topic, String description, List<AssessmentQuestion> questions, List<AssessmentOption> options
});




}
/// @nodoc
class __$AssessmentFormCopyWithImpl<$Res>
    implements _$AssessmentFormCopyWith<$Res> {
  __$AssessmentFormCopyWithImpl(this._self, this._then);

  final _AssessmentForm _self;
  final $Res Function(_AssessmentForm) _then;

/// Create a copy of AssessmentForm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? topic = null,Object? description = null,Object? questions = null,Object? options = null,}) {
  return _then(_AssessmentForm(
topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<AssessmentQuestion>,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<AssessmentOption>,
  ));
}


}

/// @nodoc
mixin _$AssessmentQuestion {

 String get id; String get name; String get question;
/// Create a copy of AssessmentQuestion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssessmentQuestionCopyWith<AssessmentQuestion> get copyWith => _$AssessmentQuestionCopyWithImpl<AssessmentQuestion>(this as AssessmentQuestion, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssessmentQuestion&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.question, question) || other.question == question));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,question);

@override
String toString() {
  return 'AssessmentQuestion(id: $id, name: $name, question: $question)';
}


}

/// @nodoc
abstract mixin class $AssessmentQuestionCopyWith<$Res>  {
  factory $AssessmentQuestionCopyWith(AssessmentQuestion value, $Res Function(AssessmentQuestion) _then) = _$AssessmentQuestionCopyWithImpl;
@useResult
$Res call({
 String id, String name, String question
});




}
/// @nodoc
class _$AssessmentQuestionCopyWithImpl<$Res>
    implements $AssessmentQuestionCopyWith<$Res> {
  _$AssessmentQuestionCopyWithImpl(this._self, this._then);

  final AssessmentQuestion _self;
  final $Res Function(AssessmentQuestion) _then;

/// Create a copy of AssessmentQuestion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? question = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AssessmentQuestion].
extension AssessmentQuestionPatterns on AssessmentQuestion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssessmentQuestion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssessmentQuestion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssessmentQuestion value)  $default,){
final _that = this;
switch (_that) {
case _AssessmentQuestion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssessmentQuestion value)?  $default,){
final _that = this;
switch (_that) {
case _AssessmentQuestion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String question)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssessmentQuestion() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String question)  $default,) {final _that = this;
switch (_that) {
case _AssessmentQuestion():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String question)?  $default,) {final _that = this;
switch (_that) {
case _AssessmentQuestion() when $default != null:
return $default(_that.id,_that.name,_that.question);case _:
  return null;

}
}

}

/// @nodoc


class _AssessmentQuestion implements AssessmentQuestion {
  const _AssessmentQuestion({required this.id, required this.name, required this.question});
  

@override final  String id;
@override final  String name;
@override final  String question;

/// Create a copy of AssessmentQuestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssessmentQuestionCopyWith<_AssessmentQuestion> get copyWith => __$AssessmentQuestionCopyWithImpl<_AssessmentQuestion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssessmentQuestion&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.question, question) || other.question == question));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,question);

@override
String toString() {
  return 'AssessmentQuestion(id: $id, name: $name, question: $question)';
}


}

/// @nodoc
abstract mixin class _$AssessmentQuestionCopyWith<$Res> implements $AssessmentQuestionCopyWith<$Res> {
  factory _$AssessmentQuestionCopyWith(_AssessmentQuestion value, $Res Function(_AssessmentQuestion) _then) = __$AssessmentQuestionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String question
});




}
/// @nodoc
class __$AssessmentQuestionCopyWithImpl<$Res>
    implements _$AssessmentQuestionCopyWith<$Res> {
  __$AssessmentQuestionCopyWithImpl(this._self, this._then);

  final _AssessmentQuestion _self;
  final $Res Function(_AssessmentQuestion) _then;

/// Create a copy of AssessmentQuestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? question = null,}) {
  return _then(_AssessmentQuestion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AssessmentOption {

 int get value; String get label;
/// Create a copy of AssessmentOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssessmentOptionCopyWith<AssessmentOption> get copyWith => _$AssessmentOptionCopyWithImpl<AssessmentOption>(this as AssessmentOption, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssessmentOption&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,value,label);

@override
String toString() {
  return 'AssessmentOption(value: $value, label: $label)';
}


}

/// @nodoc
abstract mixin class $AssessmentOptionCopyWith<$Res>  {
  factory $AssessmentOptionCopyWith(AssessmentOption value, $Res Function(AssessmentOption) _then) = _$AssessmentOptionCopyWithImpl;
@useResult
$Res call({
 int value, String label
});




}
/// @nodoc
class _$AssessmentOptionCopyWithImpl<$Res>
    implements $AssessmentOptionCopyWith<$Res> {
  _$AssessmentOptionCopyWithImpl(this._self, this._then);

  final AssessmentOption _self;
  final $Res Function(AssessmentOption) _then;

/// Create a copy of AssessmentOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? label = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AssessmentOption].
extension AssessmentOptionPatterns on AssessmentOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssessmentOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssessmentOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssessmentOption value)  $default,){
final _that = this;
switch (_that) {
case _AssessmentOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssessmentOption value)?  $default,){
final _that = this;
switch (_that) {
case _AssessmentOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int value,  String label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssessmentOption() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int value,  String label)  $default,) {final _that = this;
switch (_that) {
case _AssessmentOption():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int value,  String label)?  $default,) {final _that = this;
switch (_that) {
case _AssessmentOption() when $default != null:
return $default(_that.value,_that.label);case _:
  return null;

}
}

}

/// @nodoc


class _AssessmentOption implements AssessmentOption {
  const _AssessmentOption({required this.value, required this.label});
  

@override final  int value;
@override final  String label;

/// Create a copy of AssessmentOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssessmentOptionCopyWith<_AssessmentOption> get copyWith => __$AssessmentOptionCopyWithImpl<_AssessmentOption>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssessmentOption&&(identical(other.value, value) || other.value == value)&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,value,label);

@override
String toString() {
  return 'AssessmentOption(value: $value, label: $label)';
}


}

/// @nodoc
abstract mixin class _$AssessmentOptionCopyWith<$Res> implements $AssessmentOptionCopyWith<$Res> {
  factory _$AssessmentOptionCopyWith(_AssessmentOption value, $Res Function(_AssessmentOption) _then) = __$AssessmentOptionCopyWithImpl;
@override @useResult
$Res call({
 int value, String label
});




}
/// @nodoc
class __$AssessmentOptionCopyWithImpl<$Res>
    implements _$AssessmentOptionCopyWith<$Res> {
  __$AssessmentOptionCopyWithImpl(this._self, this._then);

  final _AssessmentOption _self;
  final $Res Function(_AssessmentOption) _then;

/// Create a copy of AssessmentOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? label = null,}) {
  return _then(_AssessmentOption(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
