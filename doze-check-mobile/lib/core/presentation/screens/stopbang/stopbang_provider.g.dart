// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stopbang_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stopBangAnswerHash() => r'00cf50f5f11ece25c29f9a42bed652699f7533a0';

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

/// See also [stopBangAnswer].
@ProviderFor(stopBangAnswer)
const stopBangAnswerProvider = StopBangAnswerFamily();

/// See also [stopBangAnswer].
class StopBangAnswerFamily extends Family<StopBangAnswer?> {
  /// See also [stopBangAnswer].
  const StopBangAnswerFamily();

  /// See also [stopBangAnswer].
  StopBangAnswerProvider call(String questionId) {
    return StopBangAnswerProvider(questionId);
  }

  @override
  StopBangAnswerProvider getProviderOverride(
    covariant StopBangAnswerProvider provider,
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
  String? get name => r'stopBangAnswerProvider';
}

/// See also [stopBangAnswer].
class StopBangAnswerProvider extends AutoDisposeProvider<StopBangAnswer?> {
  /// See also [stopBangAnswer].
  StopBangAnswerProvider(String questionId)
    : this._internal(
        (ref) => stopBangAnswer(ref as StopBangAnswerRef, questionId),
        from: stopBangAnswerProvider,
        name: r'stopBangAnswerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$stopBangAnswerHash,
        dependencies: StopBangAnswerFamily._dependencies,
        allTransitiveDependencies:
            StopBangAnswerFamily._allTransitiveDependencies,
        questionId: questionId,
      );

  StopBangAnswerProvider._internal(
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
    StopBangAnswer? Function(StopBangAnswerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StopBangAnswerProvider._internal(
        (ref) => create(ref as StopBangAnswerRef),
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
  AutoDisposeProviderElement<StopBangAnswer?> createElement() {
    return _StopBangAnswerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StopBangAnswerProvider && other.questionId == questionId;
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
mixin StopBangAnswerRef on AutoDisposeProviderRef<StopBangAnswer?> {
  /// The parameter `questionId` of this provider.
  String get questionId;
}

class _StopBangAnswerProviderElement
    extends AutoDisposeProviderElement<StopBangAnswer?>
    with StopBangAnswerRef {
  _StopBangAnswerProviderElement(super.provider);

  @override
  String get questionId => (origin as StopBangAnswerProvider).questionId;
}

String _$stopBangBmiHash() => r'2301b1dd7aebaff3f857a570ca5d85cf6467e618';

/// See also [stopBangBmi].
@ProviderFor(stopBangBmi)
final stopBangBmiProvider = AutoDisposeProvider<double>.internal(
  stopBangBmi,
  name: r'stopBangBmiProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$stopBangBmiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef StopBangBmiRef = AutoDisposeProviderRef<double>;
String _$stopBangBmiCategoryHash() =>
    r'1aa602ecb66934fead5081a3c856291c7bc8c353';

/// See also [stopBangBmiCategory].
@ProviderFor(stopBangBmiCategory)
final stopBangBmiCategoryProvider = AutoDisposeProvider<BmiCategory>.internal(
  stopBangBmiCategory,
  name: r'stopBangBmiCategoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$stopBangBmiCategoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef StopBangBmiCategoryRef = AutoDisposeProviderRef<BmiCategory>;
String _$stopBangPositiveHash() => r'5d94498580d683ac22d5944c8afbb23ea876bb2f';

/// See also [stopBangPositive].
@ProviderFor(stopBangPositive)
final stopBangPositiveProvider = AutoDisposeProvider<int>.internal(
  stopBangPositive,
  name: r'stopBangPositiveProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$stopBangPositiveHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef StopBangPositiveRef = AutoDisposeProviderRef<int>;
String _$isAssessmentCompleteHash() =>
    r'9bf6a72dc3b8b57014e6a3ebbacde2286158af09';

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
String _$stopBangHash() => r'77cf4380d7d453e33e853ad451e30b88fe1c9588';

/// See also [StopBang].
@ProviderFor(StopBang)
final stopBangProvider = NotifierProvider<StopBang, StopBangSection>.internal(
  StopBang.new,
  name: r'stopBangProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$stopBangHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$StopBang = Notifier<StopBangSection>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
