// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OptionDto {

 String? get label; int? get value;
/// Create a copy of OptionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionDtoCopyWith<OptionDto> get copyWith => _$OptionDtoCopyWithImpl<OptionDto>(this as OptionDto, _$identity);

  /// Serializes this OptionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionDto&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'OptionDto(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class $OptionDtoCopyWith<$Res>  {
  factory $OptionDtoCopyWith(OptionDto value, $Res Function(OptionDto) _then) = _$OptionDtoCopyWithImpl;
@useResult
$Res call({
 String? label, int? value
});




}
/// @nodoc
class _$OptionDtoCopyWithImpl<$Res>
    implements $OptionDtoCopyWith<$Res> {
  _$OptionDtoCopyWithImpl(this._self, this._then);

  final OptionDto _self;
  final $Res Function(OptionDto) _then;

/// Create a copy of OptionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [OptionDto].
extension OptionDtoPatterns on OptionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OptionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OptionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OptionDto value)  $default,){
final _that = this;
switch (_that) {
case _OptionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OptionDto value)?  $default,){
final _that = this;
switch (_that) {
case _OptionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? label,  int? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OptionDto() when $default != null:
return $default(_that.label,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? label,  int? value)  $default,) {final _that = this;
switch (_that) {
case _OptionDto():
return $default(_that.label,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? label,  int? value)?  $default,) {final _that = this;
switch (_that) {
case _OptionDto() when $default != null:
return $default(_that.label,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OptionDto implements OptionDto {
  const _OptionDto({this.label, this.value});
  factory _OptionDto.fromJson(Map<String, dynamic> json) => _$OptionDtoFromJson(json);

@override final  String? label;
@override final  int? value;

/// Create a copy of OptionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionDtoCopyWith<_OptionDto> get copyWith => __$OptionDtoCopyWithImpl<_OptionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionDto&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'OptionDto(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class _$OptionDtoCopyWith<$Res> implements $OptionDtoCopyWith<$Res> {
  factory _$OptionDtoCopyWith(_OptionDto value, $Res Function(_OptionDto) _then) = __$OptionDtoCopyWithImpl;
@override @useResult
$Res call({
 String? label, int? value
});




}
/// @nodoc
class __$OptionDtoCopyWithImpl<$Res>
    implements _$OptionDtoCopyWith<$Res> {
  __$OptionDtoCopyWithImpl(this._self, this._then);

  final _OptionDto _self;
  final $Res Function(_OptionDto) _then;

/// Create a copy of OptionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = freezed,Object? value = freezed,}) {
  return _then(_OptionDto(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$OptionListDto {

 List<OptionDto> get options;
/// Create a copy of OptionListDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionListDtoCopyWith<OptionListDto> get copyWith => _$OptionListDtoCopyWithImpl<OptionListDto>(this as OptionListDto, _$identity);

  /// Serializes this OptionListDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionListDto&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'OptionListDto(options: $options)';
}


}

/// @nodoc
abstract mixin class $OptionListDtoCopyWith<$Res>  {
  factory $OptionListDtoCopyWith(OptionListDto value, $Res Function(OptionListDto) _then) = _$OptionListDtoCopyWithImpl;
@useResult
$Res call({
 List<OptionDto> options
});




}
/// @nodoc
class _$OptionListDtoCopyWithImpl<$Res>
    implements $OptionListDtoCopyWith<$Res> {
  _$OptionListDtoCopyWithImpl(this._self, this._then);

  final OptionListDto _self;
  final $Res Function(OptionListDto) _then;

/// Create a copy of OptionListDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? options = null,}) {
  return _then(_self.copyWith(
options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<OptionDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [OptionListDto].
extension OptionListDtoPatterns on OptionListDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OptionListDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OptionListDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OptionListDto value)  $default,){
final _that = this;
switch (_that) {
case _OptionListDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OptionListDto value)?  $default,){
final _that = this;
switch (_that) {
case _OptionListDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OptionDto> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OptionListDto() when $default != null:
return $default(_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OptionDto> options)  $default,) {final _that = this;
switch (_that) {
case _OptionListDto():
return $default(_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OptionDto> options)?  $default,) {final _that = this;
switch (_that) {
case _OptionListDto() when $default != null:
return $default(_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OptionListDto implements OptionListDto {
  const _OptionListDto({final  List<OptionDto> options = const []}): _options = options;
  factory _OptionListDto.fromJson(Map<String, dynamic> json) => _$OptionListDtoFromJson(json);

 final  List<OptionDto> _options;
@override@JsonKey() List<OptionDto> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of OptionListDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionListDtoCopyWith<_OptionListDto> get copyWith => __$OptionListDtoCopyWithImpl<_OptionListDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionListDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionListDto&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'OptionListDto(options: $options)';
}


}

/// @nodoc
abstract mixin class _$OptionListDtoCopyWith<$Res> implements $OptionListDtoCopyWith<$Res> {
  factory _$OptionListDtoCopyWith(_OptionListDto value, $Res Function(_OptionListDto) _then) = __$OptionListDtoCopyWithImpl;
@override @useResult
$Res call({
 List<OptionDto> options
});




}
/// @nodoc
class __$OptionListDtoCopyWithImpl<$Res>
    implements _$OptionListDtoCopyWith<$Res> {
  __$OptionListDtoCopyWithImpl(this._self, this._then);

  final _OptionListDto _self;
  final $Res Function(_OptionListDto) _then;

/// Create a copy of OptionListDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? options = null,}) {
  return _then(_OptionListDto(
options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<OptionDto>,
  ));
}


}

// dart format on
