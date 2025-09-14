// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epworth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$epworthAnswerHash() => r'35e27ee327c9bf0e01582adaf9d0dc793728c3ac';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [epworthAnswer].
@ProviderFor(epworthAnswer)
const epworthAnswerProvider = EpworthAnswerFamily();

/// See also [epworthAnswer].
class EpworthAnswerFamily extends Family<EpworthAnswer?> {
  /// See also [epworthAnswer].
  const EpworthAnswerFamily();

  /// See also [epworthAnswer].
  EpworthAnswerProvider call(String questionId) {
    return EpworthAnswerProvider(questionId);
  }

  @override
  EpworthAnswerProvider getProviderOverride(
    covariant EpworthAnswerProvider provider,
  ) {
    return call(provider.questionId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'epworthAnswerProvider';
}

/// See also [epworthAnswer].
class EpworthAnswerProvider extends AutoDisposeProvider<EpworthAnswer?> {
  /// See also [epworthAnswer].
  EpworthAnswerProvider(String questionId)
    : this._internal(
        (ref) => epworthAnswer(ref as EpworthAnswerRef, questionId),
        from: epworthAnswerProvider,
        name: r'epworthAnswerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$epworthAnswerHash,
        dependencies: EpworthAnswerFamily._dependencies,
        allTransitiveDependencies:
            EpworthAnswerFamily._allTransitiveDependencies,
        questionId: questionId,
      );

  EpworthAnswerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.questionId,
  }) : super.internal();

  final String questionId;

  @override
  Override overrideWith(
    EpworthAnswer? Function(EpworthAnswerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EpworthAnswerProvider._internal(
        (ref) => create(ref as EpworthAnswerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        questionId: questionId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<EpworthAnswer?> createElement() {
    return _EpworthAnswerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EpworthAnswerProvider && other.questionId == questionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, questionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin EpworthAnswerRef on AutoDisposeProviderRef<EpworthAnswer?> {
  /// The parameter `questionId` of this provider.
  String get questionId;
}

class _EpworthAnswerProviderElement
    extends AutoDisposeProviderElement<EpworthAnswer?>
    with EpworthAnswerRef {
  _EpworthAnswerProviderElement(super.provider);

  @override
  String get questionId => (origin as EpworthAnswerProvider).questionId;
}

String _$epworthPositiveHash() => r'57c47e716b15517b80b21ba7693aa838481935f8';

/// See also [epworthPositive].
@ProviderFor(epworthPositive)
final epworthPositiveProvider = AutoDisposeProvider<int>.internal(
  epworthPositive,
  name: r'epworthPositiveProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$epworthPositiveHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef EpworthPositiveRef = AutoDisposeProviderRef<int>;
String _$isAssessmentCompleteHash() =>
    r'e4dd8b91c6e7568d3e620fdbe3d32899bc09b16c';

/// See also [isAssessmentComplete].
@ProviderFor(isAssessmentComplete)
final isAssessmentCompleteProvider = AutoDisposeProvider<bool>.internal(
  isAssessmentComplete,
  name: r'isAssessmentCompleteProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isAssessmentCompleteHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef IsAssessmentCompleteRef = AutoDisposeProviderRef<bool>;
String _$epworthHash() => r'337a1d55d194d1de0751ecec02bfcc4eb89568c4';

/// See also [Epworth].
@ProviderFor(Epworth)
final epworthProvider = NotifierProvider<Epworth, EpworthSection>.internal(
  Epworth.new,
  name: r'epworthProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$epworthHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Epworth = Notifier<EpworthSection>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
