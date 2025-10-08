// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accident_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accidentPositiveHash() => r'9aba260040852dd70b07675b272fd7dae7f8eb6a';

/// See also [accidentPositive].
@ProviderFor(accidentPositive)
final accidentPositiveProvider = AutoDisposeProvider<int>.internal(
  accidentPositive,
  name: r'accidentPositiveProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$accidentPositiveHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AccidentPositiveRef = AutoDisposeProviderRef<int>;
String _$accidentHash() => r'a0bb3ca75de4b5ca227679157c2cff4fb3ff5619';

/// See also [Accident].
@ProviderFor(Accident)
final accidentProvider = NotifierProvider<Accident, AccidentSection>.internal(
  Accident.new,
  name: r'accidentProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$accidentHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Accident = Notifier<AccidentSection>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
