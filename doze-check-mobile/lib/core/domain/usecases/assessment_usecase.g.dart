// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAssessmentFormHash() => r'912625e27a80e9b9efa5b52e2c27591dd5a09c84';

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

/// See also [getAssessmentForm].
@ProviderFor(getAssessmentForm)
const getAssessmentFormProvider = GetAssessmentFormFamily();

/// See also [getAssessmentForm].
class GetAssessmentFormFamily extends Family<AsyncValue<AssessmentForm>> {
  /// See also [getAssessmentForm].
  const GetAssessmentFormFamily();

  /// See also [getAssessmentForm].
  GetAssessmentFormProvider call(Topic topic) {
    return GetAssessmentFormProvider(topic);
  }

  @override
  GetAssessmentFormProvider getProviderOverride(
    covariant GetAssessmentFormProvider provider,
  ) {
    return call(provider.topic);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAssessmentFormProvider';
}

/// See also [getAssessmentForm].
class GetAssessmentFormProvider
    extends AutoDisposeFutureProvider<AssessmentForm> {
  /// See also [getAssessmentForm].
  GetAssessmentFormProvider(Topic topic)
    : this._internal(
        (ref) => getAssessmentForm(ref as GetAssessmentFormRef, topic),
        from: getAssessmentFormProvider,
        name: r'getAssessmentFormProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$getAssessmentFormHash,
        dependencies: GetAssessmentFormFamily._dependencies,
        allTransitiveDependencies:
            GetAssessmentFormFamily._allTransitiveDependencies,
        topic: topic,
      );

  GetAssessmentFormProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.topic,
  }) : super.internal();

  final Topic topic;

  @override
  Override overrideWith(
    FutureOr<AssessmentForm> Function(GetAssessmentFormRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAssessmentFormProvider._internal(
        (ref) => create(ref as GetAssessmentFormRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        topic: topic,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AssessmentForm> createElement() {
    return _GetAssessmentFormProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAssessmentFormProvider && other.topic == topic;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, topic.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAssessmentFormRef on AutoDisposeFutureProviderRef<AssessmentForm> {
  /// The parameter `topic` of this provider.
  Topic get topic;
}

class _GetAssessmentFormProviderElement
    extends AutoDisposeFutureProviderElement<AssessmentForm>
    with GetAssessmentFormRef {
  _GetAssessmentFormProviderElement(super.provider);

  @override
  Topic get topic => (origin as GetAssessmentFormProvider).topic;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
