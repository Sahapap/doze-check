// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submission_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createSubmissionHash() => r'387f1d6bd5b7de60df1ab47cf837dabe3bd8447d';

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

/// See also [createSubmission].
@ProviderFor(createSubmission)
const createSubmissionProvider = CreateSubmissionFamily();

/// See also [createSubmission].
class CreateSubmissionFamily extends Family<AsyncValue<void>> {
  /// See also [createSubmission].
  const CreateSubmissionFamily();

  /// See also [createSubmission].
  CreateSubmissionProvider call(Submission submission) {
    return CreateSubmissionProvider(submission);
  }

  @override
  CreateSubmissionProvider getProviderOverride(
    covariant CreateSubmissionProvider provider,
  ) {
    return call(provider.submission);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createSubmissionProvider';
}

/// See also [createSubmission].
class CreateSubmissionProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createSubmission].
  CreateSubmissionProvider(Submission submission)
    : this._internal(
        (ref) => createSubmission(ref as CreateSubmissionRef, submission),
        from: createSubmissionProvider,
        name: r'createSubmissionProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$createSubmissionHash,
        dependencies: CreateSubmissionFamily._dependencies,
        allTransitiveDependencies:
            CreateSubmissionFamily._allTransitiveDependencies,
        submission: submission,
      );

  CreateSubmissionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.submission,
  }) : super.internal();

  final Submission submission;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateSubmissionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateSubmissionProvider._internal(
        (ref) => create(ref as CreateSubmissionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        submission: submission,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateSubmissionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateSubmissionProvider && other.submission == submission;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, submission.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateSubmissionRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `submission` of this provider.
  Submission get submission;
}

class _CreateSubmissionProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with CreateSubmissionRef {
  _CreateSubmissionProviderElement(super.provider);

  @override
  Submission get submission => (origin as CreateSubmissionProvider).submission;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
