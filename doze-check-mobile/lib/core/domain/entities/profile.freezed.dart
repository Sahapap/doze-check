// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileSection {

 String get firstName; String get lastName; String get phoneNumber; int get sleepHour;
/// Create a copy of ProfileSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileSectionCopyWith<ProfileSection> get copyWith => _$ProfileSectionCopyWithImpl<ProfileSection>(this as ProfileSection, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileSection&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.sleepHour, sleepHour) || other.sleepHour == sleepHour));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,phoneNumber,sleepHour);

@override
String toString() {
  return 'ProfileSection(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, sleepHour: $sleepHour)';
}


}

/// @nodoc
abstract mixin class $ProfileSectionCopyWith<$Res>  {
  factory $ProfileSectionCopyWith(ProfileSection value, $Res Function(ProfileSection) _then) = _$ProfileSectionCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String phoneNumber, int sleepHour
});




}
/// @nodoc
class _$ProfileSectionCopyWithImpl<$Res>
    implements $ProfileSectionCopyWith<$Res> {
  _$ProfileSectionCopyWithImpl(this._self, this._then);

  final ProfileSection _self;
  final $Res Function(ProfileSection) _then;

/// Create a copy of ProfileSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? phoneNumber = null,Object? sleepHour = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,sleepHour: null == sleepHour ? _self.sleepHour : sleepHour // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileSection].
extension ProfileSectionPatterns on ProfileSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileSection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileSection value)  $default,){
final _that = this;
switch (_that) {
case _ProfileSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileSection value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String phoneNumber,  int sleepHour)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileSection() when $default != null:
return $default(_that.firstName,_that.lastName,_that.phoneNumber,_that.sleepHour);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String phoneNumber,  int sleepHour)  $default,) {final _that = this;
switch (_that) {
case _ProfileSection():
return $default(_that.firstName,_that.lastName,_that.phoneNumber,_that.sleepHour);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstName,  String lastName,  String phoneNumber,  int sleepHour)?  $default,) {final _that = this;
switch (_that) {
case _ProfileSection() when $default != null:
return $default(_that.firstName,_that.lastName,_that.phoneNumber,_that.sleepHour);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileSection implements ProfileSection {
  const _ProfileSection({this.firstName = '', this.lastName = '', this.phoneNumber = '', this.sleepHour = 0});
  

@override@JsonKey() final  String firstName;
@override@JsonKey() final  String lastName;
@override@JsonKey() final  String phoneNumber;
@override@JsonKey() final  int sleepHour;

/// Create a copy of ProfileSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileSectionCopyWith<_ProfileSection> get copyWith => __$ProfileSectionCopyWithImpl<_ProfileSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileSection&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.sleepHour, sleepHour) || other.sleepHour == sleepHour));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,phoneNumber,sleepHour);

@override
String toString() {
  return 'ProfileSection(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, sleepHour: $sleepHour)';
}


}

/// @nodoc
abstract mixin class _$ProfileSectionCopyWith<$Res> implements $ProfileSectionCopyWith<$Res> {
  factory _$ProfileSectionCopyWith(_ProfileSection value, $Res Function(_ProfileSection) _then) = __$ProfileSectionCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String lastName, String phoneNumber, int sleepHour
});




}
/// @nodoc
class __$ProfileSectionCopyWithImpl<$Res>
    implements _$ProfileSectionCopyWith<$Res> {
  __$ProfileSectionCopyWithImpl(this._self, this._then);

  final _ProfileSection _self;
  final $Res Function(_ProfileSection) _then;

/// Create a copy of ProfileSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? phoneNumber = null,Object? sleepHour = null,}) {
  return _then(_ProfileSection(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,sleepHour: null == sleepHour ? _self.sleepHour : sleepHour // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
