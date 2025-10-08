import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

@freezed
abstract class ProfileSection with _$ProfileSection {
  const factory ProfileSection({
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String phoneNumber,
    @Default(0) int sleepHour,
  }) = _ProfileSection;

  factory ProfileSection.zero() => const ProfileSection();
}
